import './over_flow_text_span.dart';
import '../extended_text_library/extended_text_library.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:ui' as ui show Gradient, Shader, TextBox;
import 'dart:math';

import 'extended_text_typedef.dart';

const String _kEllipsis = '\u2026';

/// A render object that displays a paragraph of text
class ExtendedRenderParagraph extends ExtendedTextRenderBox
    with ExtendedTextSelectionRenderObject {
  /// Creates a paragraph render object.
  ///
  /// The [text], [textAlign], [textDirection], [overflow], [softWrap], and
  /// [textScaleFactor] arguments must not be null.
  ///
  /// The [maxLines] property may be null (and indeed defaults to null), but if
  /// it is not null, it must be greater than zero.
  ExtendedRenderParagraph(
    InlineSpan text, {
    TextAlign textAlign = TextAlign.start,
    @required TextDirection textDirection,
    bool softWrap = true,
    TextOverflow overflow = TextOverflow.clip,
    double textScaleFactor = 1.0,
    int maxLines,
    TextWidthBasis textWidthBasis = TextWidthBasis.parent,
    Locale locale,
    OverFlowTextSpan overFlowTextSpan,
    this.onSelectionChanged,
    Color selectionColor,
    TextSelection selection,
    StrutStyle strutStyle,
    List<RenderBox> children,
  })  : assert(text != null),
        assert(text.debugAssertIsValid()),
        assert(textAlign != null),
        assert(textDirection != null),
        assert(softWrap != null),
        assert(overflow != null),
        assert(textScaleFactor != null),
        assert(maxLines == null || maxLines > 0),
        assert(textWidthBasis != null),
        _handleSpecialText = hasSpecialText(text),
        _softWrap = softWrap,
        _overflow = overFlowTextSpan != null ? TextOverflow.clip : overflow,
        _oldOverflow = overflow,
        _textPainter = TextPainter(
            text: text,
            textAlign: textAlign,
            textDirection: textDirection,
            textScaleFactor: textScaleFactor,
            maxLines: maxLines,
            ellipsis:
                (overFlowTextSpan == null && overflow == TextOverflow.ellipsis)
                    ? _kEllipsis
                    : null,
            locale: locale,
            strutStyle: strutStyle,
            textWidthBasis: textWidthBasis),
        _overFlowTextSpan = overFlowTextSpan,
        _selectionColor = selectionColor,
        _selection = selection {
    addAll(children);
    extractPlaceholderSpans(text);
  }

  ///TextSelection

  /// Called when the selection changes.
  TextSelectionChangedHandler onSelectionChanged;

  double get preferredLineHeight => _textPainter.preferredLineHeight;

  bool _handleSpecialText = false;
  bool get handleSpecialText => _handleSpecialText;

  List<ui.TextBox> _selectionRects;

  /// The region of text that is selected, if any.
  TextSelection get selection => _selection;
  TextSelection _selection;
  set selection(TextSelection value) {
    if (_selection == value) return;
    _selection = value;
    _selectionRects = null;
    markNeedsPaint();
    markNeedsSemanticsUpdate();
  }

  /// The color to use when painting the selection.
  Color get selectionColor => _selectionColor;
  Color _selectionColor;
  set selectionColor(Color value) {
    if (_selectionColor == value) return;
    _selectionColor = value;
    markNeedsPaint();
  }

  /// the custom text over flow TextSpan
  OverFlowTextSpan _overFlowTextSpan;
  final TextOverflow _oldOverflow;
  OverFlowTextSpan get overFlowTextSpan => _overFlowTextSpan;
  set overFlowTextSpan(OverFlowTextSpan value) {
    if (value != _overFlowTextSpan) {
      if (value != null) {
        overflow = TextOverflow.clip;
      } else {
        overflow = _oldOverflow;
      }
      _overFlowTextSpan = value;
      markNeedsPaint();
    }
  }

  final TextPainter _textPainter;

  /// The text to display
  InlineSpan get text => _textPainter.text;
  set text(InlineSpan value) {
    assert(value != null);
    _handleSpecialText = hasSpecialText(value);
    switch (_textPainter.text.compareTo(value)) {
      case RenderComparison.identical:
      case RenderComparison.metadata:
        return;
      case RenderComparison.paint:
        _textPainter.text = value;
        extractPlaceholderSpans(value);
        markNeedsPaint();
        markNeedsSemanticsUpdate();
        break;
      case RenderComparison.layout:
        _textPainter.text = value;
        _overflowShader = null;
        extractPlaceholderSpans(value);
        markNeedsLayout();
        break;
    }
  }

  /// How the text should be aligned horizontally.
  TextAlign get textAlign => _textPainter.textAlign;
  set textAlign(TextAlign value) {
    assert(value != null);
    if (_textPainter.textAlign == value) return;
    _textPainter.textAlign = value;
    markNeedsPaint();
  }

  /// The directionality of the text.
  ///
  /// This decides how the [TextAlign.start], [TextAlign.end], and
  /// [TextAlign.justify] values of [textAlign] are interpreted.
  ///
  /// This is also used to disambiguate how to render bidirectional text. For
  /// example, if the [text] is an English phrase followed by a Hebrew phrase,
  /// in a [TextDirection.ltr] context the English phrase will be on the left
  /// and the Hebrew phrase to its right, while in a [TextDirection.rtl]
  /// context, the English phrase will be on the right and the Hebrew phrase on
  /// its left.
  ///
  /// This must not be null.
  TextDirection get textDirection => _textPainter.textDirection;
  set textDirection(TextDirection value) {
    assert(value != null);
    if (_textPainter.textDirection == value) return;
    _textPainter.textDirection = value;
    markNeedsLayout();
  }

  /// Whether the text should break at soft line breaks.
  ///
  /// If false, the glyphs in the text will be positioned as if there was
  /// unlimited horizontal space.
  ///
  /// If [softWrap] is false, [overflow] and [textAlign] may have unexpected
  /// effects.
  @override
  bool get softWrap => _softWrap;
  bool _softWrap;
  set softWrap(bool value) {
    assert(value != null);
    if (_softWrap == value) return;
    _softWrap = value;
    markNeedsLayout();
  }

  /// How visual overflow should be handled.
  @override
  TextOverflow get overflow => _overflow;
  TextOverflow _overflow;
  set overflow(TextOverflow value) {
    assert(value != null);
    var temp = overFlowTextSpan != null ? TextOverflow.clip : value;
    if (_overflow == temp) return;
    _overflow = temp;
    _textPainter.ellipsis = value == TextOverflow.ellipsis ? _kEllipsis : null;
    markNeedsLayout();
  }

  /// The number of font pixels for each logical pixel.
  ///
  /// For example, if the text scale factor is 1.5, text will be 50% larger than
  /// the specified font size.
  double get textScaleFactor => _textPainter.textScaleFactor;
  set textScaleFactor(double value) {
    assert(value != null);
    if (_textPainter.textScaleFactor == value) return;
    _textPainter.textScaleFactor = value;
    _overflowShader = null;
    markNeedsLayout();
  }

  /// An optional maximum number of lines for the text to span, wrapping if necessary.
  /// If the text exceeds the given number of lines, it will be truncated according
  /// to [overflow] and [softWrap].
  int get maxLines => _textPainter.maxLines;

  /// The value may be null. If it is not null, then it must be greater than zero.
  set maxLines(int value) {
    assert(value == null || value > 0);
    if (_textPainter.maxLines == value) return;
    _textPainter.maxLines = value;
    _overflowShader = null;
    markNeedsLayout();
  }

  /// Used by this paragraph's internal [TextPainter] to select a locale-specific
  /// font.
  ///
  /// In some cases the same Unicode character may be rendered differently depending
  /// on the locale. For example the '骨' character is rendered differently in
  /// the Chinese and Japanese locales. In these cases the [locale] may be used
  /// to select a locale-specific font.
  Locale get locale => _textPainter.locale;

  /// The value may be null.
  set locale(Locale value) {
    if (_textPainter.locale == value) return;
    _textPainter.locale = value;
    _overflowShader = null;
    markNeedsLayout();
  }

  /// {@macro flutter.painting.textPainter.strutStyle}
  StrutStyle get strutStyle => _textPainter.strutStyle;

  /// The value may be null.
  set strutStyle(StrutStyle value) {
    if (_textPainter.strutStyle == value) return;
    _textPainter.strutStyle = value;
    _overflowShader = null;
    markNeedsLayout();
  }

  /// {@macro flutter.widgets.basic.TextWidthBasis}
  TextWidthBasis get textWidthBasis => _textPainter.textWidthBasis;
  set textWidthBasis(TextWidthBasis value) {
    assert(value != null);
    if (_textPainter.textWidthBasis == value) return;
    _textPainter.textWidthBasis = value;
    _overflowShader = null;
    markNeedsLayout();
  }

  @override
  double computeDistanceToActualBaseline(TextBaseline baseline) {
    assert(!debugNeedsLayout);
    assert(constraints != null);
    assert(constraints.debugAssertIsValid());
    _layoutTextWithConstraints(constraints);
    return _textPainter.computeDistanceToActualBaseline(baseline);
  }

  @override
  bool hitTestSelf(Offset position) => true;

  @override
  bool hitTestChildren(BoxHitTestResult result, {Offset position}) {
    RenderBox child = firstChild;
    int childIndex = 0;
    while (child != null &&
        childIndex < _textPainter.inlinePlaceholderBoxes.length) {
      final TextParentData textParentData = child.parentData;
      final Matrix4 transform = Matrix4.translationValues(
          textParentData.offset.dx, textParentData.offset.dy, 0.0)
        ..scale(
            textParentData.scale, textParentData.scale, textParentData.scale);
      final bool isHit = result.addWithPaintTransform(
        transform: transform,
        position: position,
        hitTest: (BoxHitTestResult result, Offset transformed) {
          assert(() {
            final Offset manualPosition =
                (position - textParentData.offset) / textParentData.scale;
            return (transformed.dx - manualPosition.dx).abs() <
                    precisionErrorTolerance &&
                (transformed.dy - manualPosition.dy).abs() <
                    precisionErrorTolerance;
          }());
          return child.hitTest(result, position: transformed);
        },
      );
      if (isHit) {
        return true;
      }
      child = childAfter(child);
      childIndex += 1;
    }
    return false;
  }

  @override
  void handleEvent(PointerEvent event, BoxHitTestEntry entry) {
    assert(debugHandleEvent(event, entry));
    if (event is! PointerDownEvent) return;
    _layoutTextWithConstraints(constraints);
    final Offset offset = entry.localPosition;
    if (_hasVisualOverflow && overFlowTextSpan != null) {
      var overFlowTextSpanOffset =
          offset - overFlowTextSpan.textPainterHelper.offset;
      if (overFlowTextSpanOffset >= Offset.zero) {
        final TextPosition position =
            overFlowTextSpan.textPainterHelper.getPositionForOffset(offset);
        final InlineSpan span =
            overFlowTextSpan.textPainterHelper.getSpanForPosition(position);

        if (span != null && span is TextSpan && span.recognizer != null) {
          span.recognizer.addPointer(event);
          return;
        }
      }
    }

    final TextPosition position = _textPainter.getPositionForOffset(offset);
    final InlineSpan span = _textPainter.text.getSpanForPosition(position);
    if (span != null && span is TextSpan) {
      span.recognizer?.addPointer(event);
    }
  }

  bool _needsClipping = false;
  bool _hasVisualOverflow = false;
  ui.Shader _overflowShader;

  /// Whether this paragraph currently has a [dart:ui.Shader] for its overflow
  /// effect.
  ///
  /// Used to test this object. Not for use in production.
  @visibleForTesting
  bool get debugHasOverflowShader => _overflowShader != null;

  void _layoutTextWithConstraints(BoxConstraints constraints) {
    layoutText(minWidth: constraints.minWidth, maxWidth: constraints.maxWidth);
  }

  @override
  void performLayout() {
    layoutChildren(constraints);
    _layoutTextWithConstraints(constraints);
    setParentData();

    // We grab _textPainter.size and _textPainter.didExceedMaxLines here because
    // assigning to `size` will trigger us to validate our intrinsic sizes,
    // which will change _textPainter's layout because the intrinsic size
    // calculations are destructive. Other _textPainter state will also be
    // affected. See also RenderEditable which has a similar issue.
    final Size textSize = _textPainter.size;
    final bool textDidExceedMaxLines = _textPainter.didExceedMaxLines;
    size = constraints.constrain(textSize);

    final bool didOverflowHeight =
        size.height < textSize.height || textDidExceedMaxLines;
    final bool didOverflowWidth = size.width < textSize.width;
    // TODO(abarth): We're only measuring the sizes of the line boxes here. If
    // the glyphs draw outside the line boxes, we might think that there isn't
    // visual overflow when there actually is visual overflow. This can become
    // a problem if we start having horizontal overflow and introduce a clip
    // that affects the actual (but undetected) vertical overflow.
    _hasVisualOverflow = didOverflowWidth || didOverflowHeight;
    if (_hasVisualOverflow) {
      switch (_overflow) {
        case TextOverflow.visible:
          _needsClipping = false;
          _overflowShader = null;
          break;
        case TextOverflow.clip:
        case TextOverflow.ellipsis:
          _needsClipping = true;
          _overflowShader = null;
          break;
        case TextOverflow.fade:
          assert(textDirection != null);
          _needsClipping = true;
          final TextPainter fadeSizePainter = TextPainter(
            text: TextSpan(style: _textPainter.text.style, text: '\u2026'),
            textDirection: textDirection,
            textScaleFactor: textScaleFactor,
            locale: locale,
          )..layout();
          if (didOverflowWidth) {
            double fadeEnd, fadeStart;
            switch (textDirection) {
              case TextDirection.rtl:
                fadeEnd = 0.0;
                fadeStart = fadeSizePainter.width;
                break;
              case TextDirection.ltr:
                fadeEnd = size.width;
                fadeStart = fadeEnd - fadeSizePainter.width;
                break;
            }
            _overflowShader = ui.Gradient.linear(
              Offset(fadeStart, 0.0),
              Offset(fadeEnd, 0.0),
              <Color>[const Color(0xFFFFFFFF), const Color(0x00FFFFFF)],
            );
          } else {
            final double fadeEnd = size.height;
            final double fadeStart = fadeEnd - fadeSizePainter.height / 2.0;
            _overflowShader = ui.Gradient.linear(
              Offset(0.0, fadeStart),
              Offset(0.0, fadeEnd),
              <Color>[const Color(0xFFFFFFFF), const Color(0x00FFFFFF)],
            );
          }
          break;
      }
    } else {
      _needsClipping = false;
      _overflowShader = null;
    }
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    // Ideally we could compute the min/max intrinsic width/height with a
    // non-destructive operation. However, currently, computing these values
    // will destroy state inside the painter. If that happens, we need to
    // get back the correct state by calling _layout again.
    //
    // TODO(abarth): Make computing the min/max intrinsic width/height
    // a non-destructive operation.
    //
    // If you remove this call, make sure that changing the textAlign still
    // works properly.
    _layoutTextWithConstraints(constraints);

    assert(() {
      if (debugRepaintTextRainbowEnabled) {
        final Paint paint = Paint()..color = debugCurrentRepaintColor.toColor();
        context.canvas.drawRect(offset & size, paint);
      }
      return true;
    }());

    Path clip = _paintTextOverflow(context, offset);
    //clip rect of over flow
    if (clip != null) {
      context.canvas.save();
      context.canvas.clipPath(clip);
    }
    _paintSelection(context, offset);
    _paintSpecialText(context, offset);
    _paint(context, offset);
    if (clip != null) {
      context.canvas.restore();
    }
  }

  void _paint(PaintingContext context, Offset offset) {
    if (_needsClipping) {
      final Rect bounds = offset & size;
      if (_overflowShader != null) {
        // This layer limits what the shader below blends with to be just the text
        // (as opposed to the text and its background).
        context.canvas.saveLayer(bounds, Paint());
      } else {
        context.canvas.save();
      }
      context.canvas.clipRect(bounds);
    }
    _textPainter.paint(context.canvas, offset);

    paintWidgets(context, offset);

    if (_needsClipping) {
      if (_overflowShader != null) {
        context.canvas.translate(offset.dx, offset.dy);
        final Paint paint = Paint()
          ..blendMode = BlendMode.modulate
          ..shader = _overflowShader;
        context.canvas.drawRect(Offset.zero & size, paint);
      }
      context.canvas.restore();
    }
  }

  /// Returns the offset at which to paint the caret.
  ///
  /// Valid only after [layout].
  Offset getOffsetForCaret(TextPosition position, Rect caretPrototype) {
    assert(!debugNeedsLayout);
    _layoutTextWithConstraints(constraints);
    return _textPainter.getOffsetForCaret(position, caretPrototype);
  }

  /// Returns a list of rects that bound the given selection.
  ///
  /// A given selection might have more than one rect if this text painter
  /// contains bidirectional text because logically contiguous text might not be
  /// visually contiguous.
  ///
  /// Valid only after [layout].
  List<ui.TextBox> getBoxesForSelection(TextSelection selection) {
    assert(!debugNeedsLayout);
    _layoutTextWithConstraints(constraints);
    return _textPainter.getBoxesForSelection(selection);
  }

  /// Returns the position within the text for the given pixel offset.
  ///
  /// Valid only after [layout].
  TextPosition getPositionForOffset(Offset offset) {
    assert(!debugNeedsLayout);
    _layoutTextWithConstraints(constraints);
    return _textPainter.getPositionForOffset(offset);
  }

  /// Returns the text range of the word at the given offset. Characters not
  /// part of a word, such as spaces, symbols, and punctuation, have word breaks
  /// on both sides. In such cases, this method will return a text range that
  /// contains the given text position.
  ///
  /// Word boundaries are defined more precisely in Unicode Standard Annex #29
  /// <http://www.unicode.org/reports/tr29/#Word_Boundaries>.
  ///
  /// Valid only after [layout].
  TextRange getWordBoundary(TextPosition position) {
    assert(!debugNeedsLayout);
    _layoutTextWithConstraints(constraints);
    return _textPainter.getWordBoundary(position);
  }

  /// Returns the size of the text as laid out.
  ///
  /// This can differ from [size] if the text overflowed or if the [constraints]
  /// provided by the parent [RenderObject] forced the layout to be bigger than
  /// necessary for the given [text].
  ///
  /// This returns the [TextPainter.size] of the underlying [TextPainter].
  ///
  /// Valid only after [layout].
  Size get textSize {
    assert(!debugNeedsLayout);
    return _textPainter.size;
  }

  // The offsets for each span that requires custom semantics.
  final List<int> _inlineSemanticsOffsets = <int>[];
  // Holds either [GestureRecognizer] or null (for placeholders) to generate
  // proper semnatics configurations.
  final List<dynamic> _inlineSemanticsElements = <dynamic>[];

  @override
  void describeSemanticsConfiguration(SemanticsConfiguration config) {
    super.describeSemanticsConfiguration(config);
    _inlineSemanticsOffsets.clear();
    _inlineSemanticsElements.clear();
    final Accumulator offset = Accumulator();
    text.visitChildren((InlineSpan span) {
      span.describeSemantics(
          offset, _inlineSemanticsOffsets, _inlineSemanticsElements);
      return true;
    });
    if (_inlineSemanticsOffsets.isNotEmpty) {
      config.explicitChildNodes = true;
      config.isSemanticBoundary = true;
    } else {
      config.label = text.toPlainText();
      config.textDirection = textDirection;
    }
  }

  @override
  void assembleSemanticsNode(SemanticsNode node, SemanticsConfiguration config,
      Iterable<SemanticsNode> children) {
    assert(_inlineSemanticsOffsets.isNotEmpty);
    assert(_inlineSemanticsOffsets.length.isEven);
    assert(_inlineSemanticsElements.isNotEmpty);
    final List<SemanticsNode> newChildren = <SemanticsNode>[];
    final String rawLabel = text.toPlainText();
    int current = 0;
    double order = -1.0;
    TextDirection currentDirection = textDirection;
    Rect currentRect;

    SemanticsConfiguration buildSemanticsConfig(int start, int end) {
      final TextDirection initialDirection = currentDirection;
      final TextSelection selection =
          TextSelection(baseOffset: start, extentOffset: end);
      final List<ui.TextBox> rects = getBoxesForSelection(selection);
      if (rects.isEmpty) {
        return null;
      }
      Rect rect = rects.first.toRect();
      currentDirection = rects.first.direction;
      for (ui.TextBox textBox in rects.skip(1)) {
        rect = rect.expandToInclude(textBox.toRect());
        currentDirection = textBox.direction;
      }
      // Any of the text boxes may have had infinite dimensions.
      // We shouldn't pass infinite dimensions up to the bridges.
      rect = Rect.fromLTWH(
        max(0.0, rect.left),
        max(0.0, rect.top),
        min(rect.width, constraints.maxWidth),
        min(rect.height, constraints.maxHeight),
      );
      // round the current rectangle to make this API testable and add some
      // padding so that the accessibility rects do not overlap with the text.
      // TODO(jonahwilliams): implement this for all text accessibility rects.
      currentRect = Rect.fromLTRB(
        rect.left.floorToDouble() - 4.0,
        rect.top.floorToDouble() - 4.0,
        rect.right.ceilToDouble() + 4.0,
        rect.bottom.ceilToDouble() + 4.0,
      );
      order += 1;
      final SemanticsConfiguration configuration = SemanticsConfiguration()
        ..sortKey = OrdinalSortKey(order)
        ..textDirection = initialDirection
        ..label = rawLabel.substring(start, end);
      return configuration;
    }

    int childIndex = 0;
    RenderBox child = firstChild;
    for (int i = 0, j = 0; i < _inlineSemanticsOffsets.length; i += 2, j++) {
      final int start = _inlineSemanticsOffsets[i];
      final int end = _inlineSemanticsOffsets[i + 1];
      // Add semantics for any text between the previous recognizer/widget and this one.
      if (current != start) {
        final SemanticsNode node = SemanticsNode();
        final SemanticsConfiguration configuration =
            buildSemanticsConfig(current, start);
        if (configuration == null) {
          continue;
        }
        node.updateWith(config: configuration);
        node.rect = currentRect;
        newChildren.add(node);
      }
      final dynamic inlineElement = _inlineSemanticsElements[j];
      final SemanticsConfiguration configuration =
          buildSemanticsConfig(start, end);
      if (configuration == null) {
        continue;
      }
      if (inlineElement != null) {
        // Add semantics for this recognizer.
        final SemanticsNode node = SemanticsNode();
        if (inlineElement is TapGestureRecognizer) {
          final TapGestureRecognizer recognizer = inlineElement;
          configuration.onTap = recognizer.onTap;
        } else if (inlineElement is LongPressGestureRecognizer) {
          final LongPressGestureRecognizer recognizer = inlineElement;
          configuration.onLongPress = recognizer.onLongPress;
        } else {
          assert(false);
        }
        node.updateWith(config: configuration);
        node.rect = currentRect;
        newChildren.add(node);
      } else if (childIndex < children.length) {
        // Add semantics for this placeholder. Semantics are precomputed in the children
        // argument.
        // Placeholders should not get a label, which would come through as an
        // object replacement character.
        configuration.label = '';
        final SemanticsNode childNode = children.elementAt(childIndex);
        final TextParentData parentData = child.parentData;
        childNode.rect = Rect.fromLTWH(
          childNode.rect.left,
          childNode.rect.top,
          childNode.rect.width * parentData.scale,
          childNode.rect.height * parentData.scale,
        );
        newChildren.add(children.elementAt(childIndex));
        childIndex += 1;
        child = childAfter(child);
      }
      current = end;
    }
    if (current < rawLabel.length) {
      final SemanticsNode node = SemanticsNode();
      final SemanticsConfiguration configuration =
          buildSemanticsConfig(current, rawLabel.length);
      if (configuration != null) {
        node.updateWith(config: configuration);
        node.rect = currentRect;
        newChildren.add(node);
      }
    }
    node.updateWith(config: config, childrenInInversePaintOrder: newChildren);
  }

  @override
  List<DiagnosticsNode> debugDescribeChildren() {
    return <DiagnosticsNode>[
      text.toDiagnosticsNode(
          name: 'text', style: DiagnosticsTreeStyle.transition)
    ];
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(EnumProperty<TextAlign>('textAlign', textAlign));
    properties.add(EnumProperty<TextDirection>('textDirection', textDirection));
    properties.add(FlagProperty('softWrap',
        value: softWrap,
        ifTrue: 'wrapping at box width',
        ifFalse: 'no wrapping except at line break characters',
        showName: true));
    properties.add(EnumProperty<TextOverflow>('overflow', overflow));
    properties.add(
        DoubleProperty('textScaleFactor', textScaleFactor, defaultValue: 1.0));
    properties
        .add(DiagnosticsProperty<Locale>('locale', locale, defaultValue: null));
    properties.add(IntProperty('maxLines', maxLines, ifNull: 'unlimited'));
  }

  void _paintSpecialText(PaintingContext context, Offset offset) {
    final Canvas canvas = context.canvas;

    canvas.save();

    ///move to extended text
    canvas.translate(offset.dx, offset.dy);

    ///we have move the canvas, so rect top left should be (0,0)
    final Rect rect = Offset(0.0, 0.0) & size;
    _paintSpecialTextChildren(<InlineSpan>[text], canvas, rect);
    canvas.restore();
  }

  void _paintSpecialTextChildren(
      List<InlineSpan> textSpans, Canvas canvas, Rect rect,
      {int textOffset: 0}) {
    for (InlineSpan ts in textSpans) {
      Offset topLeftOffset = getOffsetForCaret(
        TextPosition(offset: textOffset),
        rect,
      );
      //skip invalid or overflow
      if (topLeftOffset == null ||
          (textOffset != 0 && topLeftOffset == Offset.zero)) {
        return;
      }

      if (ts is BackgroundTextSpan) {
        var painter = ts.layout(_textPainter);
        Rect textRect = topLeftOffset & painter.size;
        Offset endOffset;
        if (textRect.right > rect.right) {
          int endTextOffset = textOffset + ts.toPlainText().length;
          endOffset = _findEndOffset(rect, endTextOffset);
        }

        ts.paint(canvas, topLeftOffset, rect,
            endOffset: endOffset, wholeTextPainter: _textPainter);
      } else if (ts is TextSpan && ts.children != null) {
        _paintSpecialTextChildren(ts.children, canvas, rect,
            textOffset: textOffset);
      }

      textOffset += ts.toPlainText().length;
    }
  }

  Offset _findEndOffset(Rect rect, int endTextOffset) {
    Offset endOffset = getOffsetForCaret(
      TextPosition(offset: endTextOffset, affinity: TextAffinity.upstream),
      rect,
    );
    //overflow
    if (endOffset == null || (endTextOffset != 0 && endOffset == Offset.zero)) {
      return _findEndOffset(rect, endTextOffset - 1);
    }
    return endOffset;
  }

  Path _paintTextOverflow(PaintingContext context, Offset offset) {
    if (_hasVisualOverflow && overFlowTextSpan != null) {
      final Canvas canvas = context.canvas;

      ///we will move the canvas, so rect top left should be (0,0)
      final Rect rect = Offset(0.0, 0.0) & size;
      var textPainter = overFlowTextSpan.layout(_textPainter);

      //overFlowTextSpan can't be more one line.
      assert(
        textPainter.width <= rect.width,
      );

      canvas.save();

      ///move to extended text
      canvas.translate(offset.dx, offset.dy);

      final Offset overFlowTextSpanOffset = Offset(
          rect.width - textPainter.width, rect.height - textPainter.height);

      ///find TextPosition near bottomRight
      TextPosition lastOnePosition =
          _textPainter.getPositionForOffset(rect.bottomRight);

//      final InlineSpan lastTextSpan =
//          _textPainter.text.getSpanForPosition(lastOnePosition);

      ///find overflow TextPosition that not clip the original text
      Offset finalOverFlowOffset = _findFinalOverflowOffset(
          rect: rect,
          x: rect.width - textPainter.width,
          endTextOffset: lastOnePosition.offset,
          y: rect.bottom,
          effectiveOffset: Offset.zero);

      Offset bottomRight = rect.bottomRight;
//      if (lastTextSpan is ExtendedWidgetSpan) {
//        bottomRight =
//            Offset(bottomRight.dx + lastTextSpan.size.width, bottomRight.dy);
//      }
      final Rect overFlowTextSpanRect =
          Rect.fromPoints(finalOverFlowOffset, bottomRight);

//      canvas.drawRect(
//          overFlowTextSpanRect, Paint()..color =overFlowTextSpan.background);

      ///why BlendMode.clear not clear the text
//      canvas.saveLayer(overFlowTextSpanRect, Paint());
//      canvas.drawRect(
//          overFlowTextSpanRect,
//          Paint()
//            ..blendMode = BlendMode.clear);
//      canvas.restore();

      textPainter.paint(
          canvas, Offset(finalOverFlowOffset.dx, overFlowTextSpanOffset.dy));

      overFlowTextSpan.textPainterHelper.saveOffset(
          Offset(finalOverFlowOffset.dx, overFlowTextSpanOffset.dy));

      canvas.restore();

      Rect textRect = offset & size;
      Rect overFlowRect = overFlowTextSpanRect.shift(offset);
      final double visibleRegionSlop = _textPainter.preferredLineHeight / 2.0;

      return Path()
        ..addPolygon(<Offset>[
          textRect.topLeft,
          textRect.topRight,
          overFlowRect.topRight,
          overFlowRect.topLeft,
          overFlowRect.bottomLeft.translate(0.0, visibleRegionSlop),
          textRect.bottomLeft.translate(0.0, visibleRegionSlop),
        ], true);
    }

    return null;
  }

  /// y find min y, so that over flow text will be covered
  Offset _findFinalOverflowOffset({
    Rect rect,
    double x,
    int endTextOffset,
    double y,
    Offset effectiveOffset,
  }) {
//    Offset endOffset = getOffsetForCaret(
//      TextPosition(offset: endTextOffset),
//      rect,
//    );

    Offset endOffset = getCaretOffset(
        TextPosition(
          offset: endTextOffset,
        ),
        handleSpecialText: handleSpecialText,
        effectiveOffset: effectiveOffset);

    if (endOffset == Offset.zero && endTextOffset > 0) {
      return _findFinalOverflowOffset(
          rect: rect,
          x: x,
          endTextOffset: endTextOffset - 1,
          y: y,
          effectiveOffset: effectiveOffset);
    }

    //final TextPosition position = getPositionForOffset(endOffset);

    ///handle image span
//    final InlineSpan textSpan = _textPainter.text.getSpanForPosition(position);
//    if (textSpan is ExtendedWidgetSpan) {
//      endOffset = Offset(endOffset.dx - textSpan.size.width, endOffset.dy);
//    }
    //overflow
    if (endOffset == null || (endTextOffset != 0 && endOffset == Offset.zero)) {
      return _findFinalOverflowOffset(
          rect: rect,
          x: x,
          endTextOffset: endTextOffset - 1,
          y: y,
          effectiveOffset: effectiveOffset);
    }

    if (endOffset.dx > x) {
      return _findFinalOverflowOffset(
          rect: rect,
          x: x,
          endTextOffset: endTextOffset - 1,
          y: min(y, endOffset.dy),
          effectiveOffset: effectiveOffset);
    }
    return Offset(endOffset.dx, min(y, endOffset.dy));
  }

  ///selection
  Offset _lastTapDownPosition;

  ///
  ///Offset _lastTapDownPosition;

  /// If [ignorePointer] is false (the default) then this method is called by
  /// the internal gesture recognizer's [TapGestureRecognizer.onTapDown]
  /// callback.
  ///
  /// When [ignorePointer] is true, an ancestor widget must respond to tap
  /// down events by calling this method.
  void handleTapDown(TapDownDetails details) {
    _lastTapDownPosition = details.globalPosition;
  }

  /// Selects the set words of a paragraph in a given range of global positions.
  ///
  /// The first and last endpoints of the selection will always be at the
  /// beginning and end of a word respectively.
  ///
  /// {@macro flutter.rendering.editable.select}
  void selectWordsInRange(
      {@required Offset from,
      Offset to,
      @required SelectionChangedCause cause}) {
    assert(cause != null);
    assert(from != null);
    _layoutTextWithConstraints(constraints);
    if (onSelectionChanged != null) {
      final TextPosition firstPosition =
          _textPainter.getPositionForOffset(globalToLocal(from));

      final TextSelection firstWord = _selectWordAtOffset(firstPosition);
      final TextSelection lastWord = to == null
          ? firstWord
          : _selectWordAtOffset(
              _textPainter.getPositionForOffset(globalToLocal(to)));

      onSelectionChanged(
        TextSelection(
          baseOffset: firstWord.base.offset,
          extentOffset: lastWord.extent.offset,
          affinity: firstWord.affinity,
        ),
        this,
        cause,
      );
    }
  }

  TextSelection _selectWordAtOffset(TextPosition position) {
    ///zmt
    final TextRange word = _textPainter.getWordBoundary(position);
    TextSelection selection;
    // When long-pressing past the end of the text, we want a collapsed cursor.
    if (position.offset >= word.end) {
      selection = TextSelection.fromPosition(position);
    } else {
      selection = TextSelection(baseOffset: word.start, extentOffset: word.end);
    }
    return handleSpecialText
        ? convertTextPainterSelectionToTextInputSelection(text, selection,
            selectWord: true)
        : selection;
  }

  /// Move the selection to the beginning or end of a word.
  ///
  /// {@macro flutter.rendering.editable.select}
  void selectWordEdge({@required SelectionChangedCause cause}) {
    assert(cause != null);
    _layoutTextWithConstraints(constraints);
    assert(_lastTapDownPosition != null);
    if (onSelectionChanged != null) {
      final TextPosition position = _textPainter
          .getPositionForOffset(globalToLocal(_lastTapDownPosition));

      final TextRange word = _textPainter.getWordBoundary(position);
      TextSelection selection;

      ///zmt
      if (position.offset - word.start <= 1) {
        selection = handleSpecialText
            ? convertTextPainterSelectionToTextInputSelection(
                text,
                TextSelection.collapsed(
                    offset: word.start, affinity: TextAffinity.downstream))
            : TextSelection.collapsed(
                offset: word.start, affinity: TextAffinity.downstream);
      } else {
        selection = handleSpecialText
            ? convertTextPainterSelectionToTextInputSelection(
                text,
                TextSelection.collapsed(
                    offset: word.end, affinity: TextAffinity.upstream))
            : TextSelection.collapsed(
                offset: word.end, affinity: TextAffinity.upstream);
      }
      onSelectionChanged(
        selection,
        this,
        cause,
      );
    }
  }

  /// Move selection to the location of the last tap down.
  ///
  /// {@template flutter.rendering.editable.select}
  /// This method is mainly used to translate user inputs in global positions
  /// into a [TextSelection]. When used in conjunction with a [EditableText],
  /// the selection change is fed back into [TextEditingController.selection].
  ///
  /// If you have a [TextEditingController], it's generally easier to
  /// programmatically manipulate its `value` or `selection` directly.
  /// {@endtemplate}
  void selectPosition({@required SelectionChangedCause cause}) {
    selectPositionAt(from: _lastTapDownPosition, cause: cause);
  }

  /// Select text between the global positions [from] and [to].
  void selectPositionAt(
      {@required Offset from,
      Offset to,
      @required SelectionChangedCause cause}) {
    assert(cause != null);
    assert(from != null);
    _layoutTextWithConstraints(constraints);
    if (onSelectionChanged != null) {
      TextPosition fromPosition =
          _textPainter.getPositionForOffset(globalToLocal(from));
      TextPosition toPosition = to == null
          ? null
          : _textPainter.getPositionForOffset(globalToLocal(to));

      //zmt
      if (handleSpecialText) {
        fromPosition =
            convertTextPainterPostionToTextInputPostion(text, fromPosition);
        toPosition =
            convertTextPainterPostionToTextInputPostion(text, toPosition);
      }

      int baseOffset = fromPosition.offset;
      int extentOffset = fromPosition.offset;

      if (toPosition != null) {
        baseOffset = min(fromPosition.offset, toPosition.offset);
        extentOffset = max(fromPosition.offset, toPosition.offset);
      }

      final TextSelection newSelection = TextSelection(
        baseOffset: baseOffset,
        extentOffset: extentOffset,
        affinity: fromPosition.affinity,
      );
      // Call [onSelectionChanged] only when the selection actually changed.
      if (newSelection != _selection) {
        onSelectionChanged(newSelection, this, cause);
      }
    }
  }

  /// Select a word around the location of the last tap down.
  ///
  /// {@macro flutter.rendering.editable.select}
  void selectWord({@required SelectionChangedCause cause}) {
    selectWordsInRange(from: _lastTapDownPosition, cause: cause);
  }

  void _paintSelection(PaintingContext context, Offset effectiveOffset) {
    if (_selection == null) return;
    bool showSelection = false;

    ///zmt
    var actualSelection = handleSpecialText
        ? convertTextInputSelectionToTextPainterSelection(text, _selection)
        : _selection;

    if (!actualSelection.isCollapsed && _selectionColor != null) {
      showSelection = true;
      _updateSelectionExtentsVisibility(effectiveOffset, actualSelection);
    }

    if (showSelection) {
      _selectionRects ??= _textPainter.getBoxesForSelection(actualSelection);

      assert(_selectionRects != null);
      final Paint paint = Paint()..color = _selectionColor;

      ///zmt
      for (int i = 0; i < _selectionRects.length; i++) {
        var box = _selectionRects[i];
        var rect = box.toRect();
        context.canvas.drawRect(rect.shift(effectiveOffset), paint);
      }
    }
  }

  /// Returns the local coordinates of the endpoints of the given selection.
  ///
  /// If the selection is collapsed (and therefore occupies a single point), the
  /// returned list is of length one. Otherwise, the selection is not collapsed
  /// and the returned list is of length two. In this case, however, the two
  /// points might actually be co-located (e.g., because of a bidirectional
  /// selection that contains some text but whose ends meet in the middle).
  ///
  /// See also:
  ///
  ///  * [getLocalRectForCaret], which is the equivalent but for
  ///    a [TextPosition] rather than a [TextSelection].
  List<TextSelectionPoint> getEndpointsForSelection(TextSelection selection) {
    assert(constraints != null);
//    if (temp.isCollapsed && toolbar) {
//      // TODO(mpcomplete): This doesn't work well at an RTL/LTR boundary.
////      final Offset caretOffset =
////          _textPainter.getOffsetForCaret(temp.extent, _caretPrototype);
//
//      final Offset caretOffset = _getCaretOffset(
//          effectiveOffset,
//          TextPosition(offset: temp.extentOffset, affinity: selection.affinity),
//          TextPosition(
//              offset: selection.extentOffset, affinity: selection.affinity));
//
//      final Offset start = Offset(0.0, preferredLineHeight) + caretOffset;
//
//      return <TextSelectionPoint>[TextSelectionPoint(start, null)];
//    } else

    if (!selection.isCollapsed) {
      _layoutTextWithConstraints(constraints);
      TextSelection textPainterSelection = selection;
      if (handleSpecialText) {
        textPainterSelection =
            convertTextInputSelectionToTextPainterSelection(text, selection);
      }
      final List<ui.TextBox> boxes =
          _textPainter.getBoxesForSelection(textPainterSelection);
      final Offset start = Offset(boxes.first.start, boxes.first.bottom);
      Offset end = Offset(boxes.last.end, boxes.last.bottom);

      if (_hasVisualOverflow && overFlowTextSpan != null) {
        var overFlowOffset = overFlowTextSpan.textPainterHelper.offset;
        if (overFlowOffset.dx < end.dx && overFlowOffset.dy < end.dy) {
          end = Offset(overFlowOffset.dx, end.dy);
        }
      }

      return <TextSelectionPoint>[
        TextSelectionPoint(start, boxes.first.direction),
        TextSelectionPoint(end, boxes.last.direction),
      ];
    }

    return null;
  }

  //Rect _caretPrototype = Rect.zero;

  /// Track whether position of the start of the selected text is within the viewport.
  ///
  /// For example, if the text contains "Hello World", and the user selects
  /// "Hello", then scrolls so only "World" is visible, this will become false.
  /// If the user scrolls back so that the "H" is visible again, this will
  /// become true.
  ///
  /// This bool indicates whether the text is scrolled so that the handle is
  /// inside the text field viewport, as opposed to whether it is actually
  /// visible on the screen.
  ValueListenable<bool> get selectionStartInViewport =>
      _selectionStartInViewport;
  final ValueNotifier<bool> _selectionStartInViewport =
      ValueNotifier<bool>(true);

  /// Track whether position of the end of the selected text is within the viewport.
  ///
  /// For example, if the text contains "Hello World", and the user selects
  /// "World", then scrolls so only "Hello" is visible, this will become
  /// 'false'. If the user scrolls back so that the "d" is visible again, this
  /// will become 'true'.
  ///
  /// This bool indicates whether the text is scrolled so that the handle is
  /// inside the text field viewport, as opposed to whether it is actually
  /// visible on the screen.
  ValueListenable<bool> get selectionEndInViewport => _selectionEndInViewport;
  final ValueNotifier<bool> _selectionEndInViewport = ValueNotifier<bool>(true);

  TextPosition getPositionForPoint(Offset globalPosition) {
    _layoutTextWithConstraints(constraints);
    var result =
        _textPainter.getPositionForOffset(globalToLocal(globalPosition));

    ///never drag over the over flow text span
    if (_hasVisualOverflow && overFlowTextSpan != null) {
      var position =
          getPositionForOffset(overFlowTextSpan.textPainterHelper.offset);
      if (result.offset > position.offset) return position;
    }

    return result;
  }

  void _updateSelectionExtentsVisibility(
      Offset effectiveOffset, TextSelection selection) {
    ///final Rect visibleRegion = Offset.zero & size;

    ///zmt
    ///caret may be less than 0, because it's bigger than text
    ///

    final Rect visibleRegion = Offset.zero & size;

    final Offset startOffset = getCaretOffset(
      TextPosition(
        offset: selection.start,
        affinity: selection.affinity,
      ),
      effectiveOffset: effectiveOffset,
      handleSpecialText: handleSpecialText,
    );

    // TODO(justinmc): https://github.com/flutter/flutter/issues/31495
    // Check if the selection is visible with an approximation because a
    // difference between rounded and unrounded values causes the caret to be
    // reported as having a slightly (< 0.5) negative y offset. This rounding
    // happens in paragraph.cc's layout and TextPainer's
    // _applyFloatingPointHack. Ideally, the rounding mismatch will be fixed and
    // this can be changed to be a strict check instead of an approximation.
    const double visibleRegionSlop = 0.5;
    _selectionStartInViewport.value = visibleRegion
        .inflate(visibleRegionSlop)
        .contains(startOffset + effectiveOffset);

    final Offset endOffset = getCaretOffset(
      TextPosition(offset: selection.end, affinity: selection.affinity),
      effectiveOffset: effectiveOffset,
      handleSpecialText: handleSpecialText,
    );

    _selectionEndInViewport.value = visibleRegion
        .inflate(visibleRegionSlop)
        .contains(endOffset + effectiveOffset);
  }

  bool containsPosition(Offset position) {
    final Rect visibleRegion = Offset.zero & size;
    return visibleRegion.contains(globalToLocal(position));
  }

  @override
  Size getSize() {
    return this.size;
  }

  @override
  bool get isAttached => attached;

  @override
  Offset getlocalToGlobal(Offset point, {RenderObject ancestor}) {
    return localToGlobal(point, ancestor: ancestor);
  }

  @override
  TextPainter get textPainter => _textPainter;
}
