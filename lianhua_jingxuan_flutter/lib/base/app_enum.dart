
// 网络请求状态
enum AppNetRequestState { start, fail, success }

// 视频状态
enum HDVideoState {
  not_init, // 无视频
  init,
  buffering,
  paused,
  playing,
  playingAndShowMenu
}