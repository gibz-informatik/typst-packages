// lib.typ — public entrypoint with flat gibz_ API + optional GIBZ namespace.

// Import only what we want to expose
#import "src/colors.typ": gibz-blue
#import "src/state.typ": gibz-lang            // kept internal; not re-exported
#import "src/layout.typ": _conf
#import "src/components/base_box.typ": base_box
#import "src/components/icon_box.typ": icon_box
#import "src/components/boxes.typ": hint, question, supplementary, video
#import "src/components/codebox.typ": black_code_box
#import "src/components/task.typ": task
#import "src/i18n.typ": t

#import "src/code.typ": code as gibz_code, code_wrap as _gibz_codly, set_code_style as gibz_set_code_style


// ── Flat API (prefixed) ──────────────────────────────────────────────────────
#let gibz_script = _conf
#let gibz_task = task
#let gibz_hint = hint
#let gibz_question = question
#let gibz_video = video
#let gibz_supplementary = supplementary
#let gibz_black_code_box = black_code_box
#let gibz_icon_box = icon_box
#let gibz_base_box = base_box
#let gibz_t = t

// Colors (both single and grouped)
#let gibz_blue = gibz-blue
#let gibz_colors = (blue: gibz_blue)

// ── Optional convenience namespace (no duplication; just references) ────────
#let GIBZ = (
  conf: gibz_script,
  task: gibz_task,
  hint: gibz_hint,
  question: gibz_question,
  video: gibz_video,
  supplementary: gibz_supplementary,
  black_code_box: gibz_black_code_box,
  icon_box: gibz_icon_box,
  base_box: gibz_base_box,
  colors: gibz_colors,
  t: gibz_t,
)
