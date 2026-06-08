# Dial Screen Placer

Put a UI / screen design onto the dial of a product photo — fit the perspective by eye, then
download the finished image. Built for the upliance.ai air-fryer dial, but it works with any
round dial and any square screen design.

## Quick start

1. **Double-click `dial-screen-placer.html`** — it opens in your browser. That's it. No install,
   no internet, no account. Everything runs locally on your machine; your photos never leave it.
2. **＋ add photos** — pick one or more product shots (or drag them onto the window).
3. **Screen design** — choose a built-in screen from the dropdown (home screen, temperature,
   timer, the texture screens…), or **upload your own** square PNG.
4. **Fit it on the dial** — use the buttons:
   - **Position** ↑ ↓ ← → — move it onto the dial.
   - **Size** — bigger / smaller, wider / narrower, taller / shorter.
   - **Rotate** — ±1° and ±10° buttons, or the **jog slider** (spin it live; it springs back).
   - **Tilt / perspective** — back / fwd / left / right, for when the dial is seen at an angle
     (e.g. a top-down shot). Tick **finer steps** for smaller increments.
   - You can also drag the 4 coloured dots directly for fine tweaks.
5. **Trim the edge** — *bite less / bite more*. This shaves pixels off the design's rim inward so
   it doesn't clash with the real orange ring or black bezel. You see it update live. (Default 20%
   already drops the design's own orange ring so the photo's real ring shows through.)
6. **⬇ download this image** (or **download all**) — saves a full-resolution JPG next to your
   downloads. Each photo keeps its own placement, so you can do a batch.

## Tips

- Align the design's **outer rim to the real dial ring**, matching its ellipse/tilt — that's the
  whole trick. The buttons make this quick; the dots are for the final nudge.
- The **brightness** slider only brightens the *preview* so you can see a dark dial. It does not
  change the saved image.
- For a steep top-down dial the screen will look foreshortened — that's geometrically correct.
- **Adding a new design later:** export a **square PNG with a transparent background**, the
  artwork centred with its outer rim at the edges (like the files in `designs/`), and use
  **"upload your own PNG…"**. Drop it in `designs/` if you want to keep it with the kit.

## What's in this folder

- `dial-screen-placer.html` — the whole tool (the built-in designs are baked in; works on its own).
- `designs/` — the source PNGs for the built-in screens (handy for reference or to copy/edit).
- `sample-photos/` — two upliance air-fryer shots to practise on.

## How it works (for the curious)

The perspective fit is a real homography (4-corner projective warp) executed on the GPU via
WebGL, at the photo's native resolution — the same math as a `cv2.warpPerspective`, just running
live in your browser. **No AI / LLM / API is involved** in using the tool: it's plain HTML +
JavaScript, fully offline, free to run. (An LLM helped *build* it and prepped the design PNGs;
none of that is needed to operate it.)

## Browser

Any modern Chrome / Edge / Safari / Firefox with WebGL (all of them, basically). If a download
ever comes out blank, make sure hardware acceleration / WebGL is enabled in the browser settings.
# dial-screen-placer
