# Linux settings

Various settings and scripts.

---
Keyboard layout described in `usr/share/X11/xkb/symbols/dl` looks like this:

```text
┌─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬───────────┐
│ `   │ ! Π │ "   │ #   │ $   │ %   │ &   │ /   │ (   │ )   │ ¿   │ ?   │ *   │           │
│ ~ ¡ │ 1 π │ 2 ˇ │ 3 ^ │ 4 ˘ │ 5 ° │ 6 ˛ │ 7 ` │ 8 ˙ │ 9 ´ │ 0 ˝ │ = ¨ │ + ¸ │ BackSp    │
├─────┴──┬──┴──┬──┴──┬──┴──┬──┴──┬──┴──┬──┴──┬──┴──┬──┴──┬──┴──┬──┴──┬──┴──┬──┴──┬────────┤
│ LTab   │ Q Æ │ W ß │ E   │ R   │ T   │ Z Ž │ U Ü │ I Ŭ │ O Ö │ P Ø │ [   │ ]   │        │
│ Tab    │ q æ │ w ß │ e € │ r   │ t   │ z ž │ u ü │ i ŭ │ o ö │ p ø │ {   │ }   │ Return │
├────────┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┐      │
│ Delete   │ A Ä │ S Š │ D Đ │ F   │ G Ĝ │ H   │ J   │ K   │ L   │ : Ł │ '   │ \   │      │
│ BackSp   │ a ä │ s š │ d đ │ f   │ g ĝ │ h ← │ j ↓ │ k ↑ │ l → │ ; ł │ "   │ /   │      │
├───────┬──┴──┬──┴──┬──┴──┬──┴──┬──┴──┬──┴──┬──┴──┬──┴──┬──┴──┬──┴──┬──┴──┬──┴─────┴──────┤
│       │ @   │ Y Ŝ │ X Ĉ │ C Č │ V Ć │ B Ĥ │ N Ñ │ M Ĵ │ <   │ >   │ _   │               │
│ Shift │ | ¦ │ y ŝ │ x ĉ │ c č │ v ć │ b ĥ │ n ñ │ m ĵ │ , ⇽ │ . ⇾ │ -   │ Shift         │
├───────┴┬────┴──┬──┴───┬─┴─────┴─────┴─────┴─────┴─────┴──┬──┴────┬┴─────┴──┬────────────┤
│        │       │ Meta │                                  │       │         │            │
│ Ctrl   │ Super │ Alt  │                                  │ AltGr │ Super   │ Caps Lock  │
└────────┴───────┴──────┴──────────────────────────────────┴───────┴─────────┴────────────┘
```
Symbol above `ß` is actually `ẞ`, but `ß` is displayed instead because `ẞ` is not rendered as a monospace character.  
The `⇽` and `⇾` symbols represent `Home` and `End` keys, respectively.  
Arrows on `h j k l` keys are obviously movement keys, same as in Vim.
