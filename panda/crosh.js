// Base16 Panda
// Scheme: BetaPictoris

var color_scheme = {
        'base00': '#383838',
        'base01': '#212121',
        'base02': '#FFC6C6',
        'base03': '#FFC6DE',
        'base04': '#B4FFD8',
        'base05': '#D6F7E6',
        'base06': '#FFD6A5',
        'base07': '#FFE6DE',
        'base08': '#CCE6FF',
        'base09': '#E6F7FF',
        'base0A': '#F3E4FF',
        'base0B': '#E6C6FF',
        'base0C': '#D2FCFF',
        'base0D': '#ABEFF3',
        'base0E': '#EAEAEA',
        'base0F': '#D2D2D2',
};

term_.prefs_.set('background-color', color_scheme.base00);
term_.prefs_.set('foreground-color', color_scheme.base05);
term_.prefs_.set('cursor-color', "rgba(214, 247, 230, 0.5)");

term_.prefs_.set('color-palette-overrides',
                        [color_scheme.base00,
                        color_scheme.base08,
                        color_scheme.base0B,
                        color_scheme.base0A,
                        color_scheme.base0D,
                        color_scheme.base0E,
                        color_scheme.base0C,
                        color_scheme.base05,
                        color_scheme.base03,
                        color_scheme.base09,
                        color_scheme.base01,
                        color_scheme.base02,
                        color_scheme.base04,
                        color_scheme.base06,
                        color_scheme.base0F,
                        color_scheme.base07]);
