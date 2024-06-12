vim.cmd('hi clear')

if vim.fn.exists("syntax_on") then
	vim.cmd('syntax reset')
end

vim.g.colors_name = 'vacme'

local vcolors = {
	-- whites
	w1 = {term='15',hex='#FFFFEC'},
	w2 = {term='11',hex='#EEEEA7'},
	w3 = {term='7',hex='#999957'},
	w4 = {term='0',hex='#424242'},

	-- reds
	r1 = {term='9',hex='#F2ACAA'},
	r2 = {term='1',hex='#B85C57'},

	-- greens
	g1 = {term='193',hex='#EFFEEC'},
	g2 = {term='10',hex='#98CE8F'},
	g3 = {term='2',hex='#57864E'},

	-- yellows
	y1 = {term='187',hex='#EAEBDB'},
	y2 = {term='8',hex='#B7B19C'},
	y3 = {term='3',hex='#8F7634'},

	-- blues
	b1 = {term='195',hex='#E2F1F8'},
	b2 = {term='12',hex='#A6DCF8'},
	b3 = {term='4',hex='#2A8DC5'},

	-- magentas
	m1 = {term='13',hex='#D0D0F7'},
	m2 = {term='5',hex='#8888C7'},

	-- cyans
	c1 = {term='194',hex='#EEFEFF'},
	c2 = {term='14',hex='#B0ECED'},
	c3 = {term='6',hex='#6AA7A8'},

	-- misc (accent)
	a1 = {term='195',hex='#030093'}
}
local vstyles = {
	normal = {fg=vcolors.w4,bg=vcolors.w1},
	ghostly = {fg=vcolors.y3,bg=vcolors.w1},
	hilited = {fg=vcolors.w4,bg=vcolors.w2},
	justbold = {style='bold'},
	justuline = {style='underline'},
	justit = {style='italic'}
}

local syntax = {
}

-- nvim UI elements (cursors, searches, borders, etc.)
syntax['Normal'] = vstyles.normal
syntax['FoldColumn'] = {fg=vcolors.y2,bg=vcolors.y1}
syntax['Folded'] = vstyles.ghostly
syntax['Terminal'] = vstyles.normal
syntax['ToolbarButton'] = vstyles.normal
syntax['ToolbarLine'] = vstyles.normal
syntax['CursorLine'] = {bg=vcolors.g1}
syntax['LineNr'] = {fg=vcolors.w3,bg=vcolors.y1}
syntax['LineNrAbove'] = syntax['LineNr']
syntax['LineNrBelow'] = syntax['LineNr']
syntax['FloatBorder'] = {fg=vcolors.g1,bg=vcolors.g3}
syntax['NormalFloat'] = {fg=vcolors.g3,bg=vcolors.g1}
syntax['DiffAdd'] = {fg=vcolors.w4, bg=vcolors.g2}
syntax['DiffChange'] = {fg=vcolors.w4, bg=vcolors.c2}
syntax['DiffDelete'] = {fg=vcolors.w4, bg=vcolors.r1}
syntax['DiffText'] = {fg=vcolors.w4, bg=vcolors.g2, style='bold'}
syntax['StatusLine'] = {fg=vcolors.w4, bg=vcolors.b1, style='bold,underline'}
syntax['StatusLineNC'] = {fg=vcolors.w4, bg=vcolors.b1}
syntax['TabLine'] = syntax['StatusLineNC']
syntax['TabLineFill'] = syntax['StatusLineNC']
syntax['WinSeparator'] = syntax['StatusLineNC']
syntax['TabLineSel'] = {fg=vcolors.w1, bg=vcolors.m2}
syntax['CursorLineNr'] = {fg=vcolors.w1,bg=vcolors.m2}
syntax['NonText'] = {fg=vcolors.w3}
syntax['SpecialKey'] = vstyles.justbold
syntax['SpellBad'] = {fg=vcolors.r2,style='underline'}
syntax['SpellCap'] = vstyles.justuline
syntax['SpellLocal'] = vstyles.justuline
syntax['SpellRare'] = vstyles.justuline
syntax['Title'] = vstyles.justbold
syntax['ColorColumn'] = vstyles.hilited
syntax['Conceal'] = vstyles.ghostly
syntax['CursorColumn'] = {bg=vcolors.g1}
syntax['Directory'] = vstyles.justbold
syntax['EndOfBuffer'] = vstyles.ghostly
syntax['ErrorMsg'] = vstyles.justbold
syntax['IncSearch'] = {fg=vcolors.w1,bg=vcolors.m2}
syntax['MatchParen'] = {bg=vcolors.w2,style='bold'}
syntax['ModeMsg'] = vstyles.justbold
syntax['MoreMsg'] = vstyles.justbold
syntax['Pmenu'] = {fg=vcolors.g3,bg=vcolors.g1}
syntax['PmenuSbar'] = {fg=vcolors.g1,bg=vcolors.g3}
syntax['PmenuSel'] = {fg=vcolors.w4,bg=vcolors.g2,style='underline'}
syntax['PmenuKindSel'] = {fg=vcolors.w4,bg=vcolors.g2}
syntax['PmenuExtraSel'] = syntax['PmenuKindSel']
syntax['PmenuThumb'] = {fg=vcolors.g1,bg=vcolors.w4}
syntax['Question'] = vstyles.justbold
syntax['Search'] = vstyles.hilited
syntax['SignColumn'] = syntax['LineNr']
syntax['Visual'] = vstyles.hilited
syntax['VisualNOS'] = vstyles.hilited
syntax['WarningMsg'] = vstyles.justbold
syntax['WildMenu'] = {fg=vcolors.w1,bg=vcolors.m2}
syntax['QuickFixLine'] = vstyles.justbold

-- language syntax (comments, literals, identifiers, etc.)
syntax['Comment'] = vstyles.justbold

syntax['Constant'] = vstyles.normal
syntax['String'] = vstyles.normal
syntax['Character'] = vstyles.normal
syntax['Number'] = vstyles.normal
syntax['Boolean'] = vstyles.normal
syntax['Float'] = vstyles.normal

syntax['Identifier'] = vstyles.normal
syntax['Function'] = vstyles.normal

syntax['Statement'] = vstyles.normal
syntax['Conditional'] = vstyles.normal
syntax['Repeat'] = vstyles.normal
syntax['Label'] = vstyles.normal
syntax['Operator'] = vstyles.normal
syntax['Keyword'] = vstyles.normal
syntax['Exception'] = vstyles.normal

syntax['PreProc'] = vstyles.normal
syntax['Include'] = vstyles.normal
syntax['Define'] = vstyles.normal
syntax['Macro'] = vstyles.normal
syntax['PreCondit'] = vstyles.normal

syntax['Type'] = vstyles.normal
syntax['StorageClass'] = vstyles.normal
syntax['Structure'] = vstyles.normal
syntax['Typedef'] = vstyles.normal

syntax['Special'] = vstyles.normal
syntax['SpecialChar'] = vstyles.normal
syntax['Tag'] = vstyles.justuline
syntax['Delimiter'] = vstyles.normal 
syntax['SpecialComment'] = vstyles.normal 
syntax['Debug'] = vstyles.normal 

syntax['Underlined'] = vstyles.justuline

syntax['Ignore'] = vstyles.justbold

syntax['Error'] = vstyles.normal

syntax['Todo'] = vstyles.hilited

-- language-specific language syntax
-- syntax['vimCommentString'] = {fg=colors.violet}
-- syntax['vimCommand'] = {fg=colors.yellow}
-- syntax['vimCmdSep'] = {fg=colors.blue,style='bold'}
-- syntax['helpExample'] = {fg=colors.base1}
-- syntax['helpOption'] = {fg=colors.cyan}
-- syntax['helpNote'] = {fg=colors.magenta}
-- syntax['helpVim'] = {fg=colors.magenta}
-- syntax['helpHyperTextJump'] = {fg=colors.blue}
-- syntax['helpHyperTextEntry'] = {fg=colors.green}
-- syntax['vimIsCommand'] = {fg=colors.base00}
-- syntax['vimSynMtchOpt'] = {fg=colors.yellow}
-- syntax['vimSynType'] = {fg=colors.cyan}
-- syntax['vimHiLink'] = {fg=colors.blue}
-- syntax['vimHiGroup'] = {fg=colors.blue}
-- syntax['vimGroup'] = {fg=colors.blue,style='bold'}
-- syntax['gitcommitComment'] = {fg=colors.base01,style='italics'}
-- syntax['gitcommitUnmerged'] = {fg=colors.green,style='bold'}
-- syntax['gitcommitOnBranch'] = {fg=colors.base01,style='bold'}
-- syntax['gitcommitBranch'] = {fg=colors.magenta,style='bold'}
-- syntax['gitcommitdiscardedtype'] = {fg=colors.red}
-- syntax['gitcommitselectedtype'] = {fg=colors.green}
-- syntax['gitcommitHeader'] = {fg=colors.base01}
-- syntax['gitcommitUntrackedFile'] = {fg=colors.cyan,style='bold'}
-- syntax['gitcommitDiscardedFile'] = {fg=colors.red,style='bold'}
-- syntax['gitcommitSelectedFile'] = {fg=colors.green,style='bold'}
-- syntax['gitcommitUnmergedFile'] = {fg=colors.yellow,style='bold'}
-- syntax['gitcommitFile'] = {fg=colors.base0,style='bold'}
-- syntax['htmlTag'] = {fg=colors.base01}
-- syntax['htmlEndTag'] = {fg=colors.base01}
-- syntax['htmlTagN'] = {fg=colors.base1,style='bold'}
-- syntax['htmlTagName'] = {fg=colors.blue,style='bold'}
-- syntax['htmlSpecialTagName'] = {fg=colors.blue,style='italics'}
-- syntax['htmlArg'] = {fg=colors.base00}
-- syntax['javaScript'] = {fg=colors.yellow}
-- syntax['perlHereDoc'] = {fg=colors.base1}
-- syntax['perlVarPlain'] = {fg=colors.yellow}
-- syntax['perlStatementFileDesc'] = {fg=colors.cyan}
-- syntax['texstatement'] = {fg=colors.cyan}
-- syntax['texmathzonex'] = {fg=colors.yellow}
-- syntax['texmathmatcher'] = {fg=colors.yellow}
-- syntax['texreflabel'] = {fg=colors.yellow}
-- syntax['rubyDefine'] = {fg=colors.base1,style='bold'}
-- syntax['rubyBoolean'] = {fg=colors.magenta}
-- syntax['cPreCondit'] = {fg=colors.orange}
-- syntax['VarId'] = {fg=colors.blue}
-- syntax['ConId'] = {fg=colors.yellow}
-- syntax['hsImport'] = {fg=colors.magenta}
-- syntax['hsString'] = {fg=colors.base00}
-- syntax['hsStructure'] = {fg=colors.cyan}
-- syntax['hs_hlFunctionName'] = {fg=colors.blue}
-- syntax['hsStatement'] = {fg=colors.cyan}
-- syntax['hsImportLabel'] = {fg=colors.cyan}
-- syntax['hs_OpFunctionName'] = {fg=colors.yellow}
-- syntax['hs_DeclareFunction'] = {fg=colors.orange}
-- syntax['hsVarSym'] = {fg=colors.cyan}
-- syntax['hsType'] = {fg=colors.yellow}
-- syntax['hsTypedef'] = {fg=colors.cyan}
-- syntax['hsModuleName'] = {fg=colors.green}
-- syntax['pandocTitleBlock'] = {fg=colors.blue}
-- syntax['pandocTitleBlockTitle'] = {fg=colors.blue,style='bold'}
-- syntax['pandocTitleComment'] = {fg=colors.blue,style='bold'}
-- syntax['pandocComment'] = {fg=colors.base01,style='italics'}
-- syntax['pandocVerbatimBlock'] = {fg=colors.yellow}
-- syntax['pandocBlockQuote'] = {fg=colors.blue}
-- syntax['pandocBlockQuoteLeader1'] = {fg=colors.blue}
-- syntax['pandocBlockQuoteLeader2'] = {fg=colors.cyan}
-- syntax['pandocBlockQuoteLeader3'] = {fg=colors.yellow}
-- syntax['pandocBlockQuoteLeader4'] = {fg=colors.red}
-- syntax['pandocBlockQuoteLeader5'] = {fg=colors.base0}
-- syntax['pandocBlockQuoteLeader6'] = {fg=colors.base01}
-- syntax['pandocListMarker'] = {fg=colors.magenta}
-- syntax['pandocListReference'] = {fg=colors.magenta}
-- syntax['pandocDefinitionBlock'] = {fg=colors.violet}
-- syntax['pandocDefinitionTerm'] = {fg=colors.violet,style='standout'}
-- syntax['pandocDefinitionIndctr'] = {fg=colors.violet,style='bold'}
-- syntax['pandocEmphasisDefinition'] = {fg=colors.violet,style='italics'}
-- syntax['pandocEmphasisNestedDefinition'] = {fg=colors.violet,style='bold'}
-- syntax['pandocStrongEmphasisDefinition'] = {fg=colors.violet,style='bold'}
-- syntax['pandocStrongEmphasisNestedDefinition'] = {fg=colors.violet,style='bold'}
-- syntax['pandocStrongEmphasisEmphasisDefinition'] = {fg=colors.violet,style='bold'}
-- syntax['pandocStrikeoutDefinition'] = {fg=colors.violet,style='reverse'}
-- syntax['pandocVerbatimInlineDefinition'] = {fg=colors.violet}
-- syntax['pandocSuperscriptDefinition'] = {fg=colors.violet}
-- syntax['pandocSubscriptDefinition'] = {fg=colors.violet}
-- syntax['pandocTable'] = {fg=colors.blue}
-- syntax['pandocTableStructure'] = {fg=colors.blue}
-- syntax['pandocTableZebraLight'] = {fg=colors.blue,bg=colors.base03}
-- syntax['pandocTableZebraDark'] = {fg=colors.blue,bg=colors.base02}
-- syntax['pandocEmphasisTable'] = {fg=colors.blue,style='italics'}
-- syntax['pandocEmphasisNestedTable'] = {fg=colors.blue,style='bold'}
-- syntax['pandocStrongEmphasisTable'] = {fg=colors.blue,style='bold'}
-- syntax['pandocStrongEmphasisNestedTable'] = {fg=colors.blue,style='bold'}
-- syntax['pandocStrongEmphasisEmphasisTable'] = {fg=colors.blue,style='bold'}
-- syntax['pandocStrikeoutTable'] = {fg=colors.blue,style='reverse'}
-- syntax['pandocVerbatimInlineTable'] = {fg=colors.blue}
-- syntax['pandocSuperscriptTable'] = {fg=colors.blue}
-- syntax['pandocSubscriptTable'] = {fg=colors.blue}
-- syntax['pandocHeading'] = {fg=colors.orange,style='bold'}
-- syntax['pandocHeadingMarker'] = {fg=colors.orange,style='bold'}
-- syntax['pandocEmphasisHeading'] = {fg=colors.orange,style='bold'}
-- syntax['pandocEmphasisNestedHeading'] = {fg=colors.orange,style='bold'}
-- syntax['pandocStrongEmphasisHeading'] = {fg=colors.orange,style='bold'}
-- syntax['pandocStrongEmphasisNestedHeading'] = {fg=colors.orange,style='bold'}
-- syntax['pandocStrongEmphasisEmphasisHeading'] = {fg=colors.orange,style='bold'}
-- syntax['pandocStrikeoutHeading'] = {fg=colors.orange,style='reverse'}
-- syntax['pandocVerbatimInlineHeading'] = {fg=colors.orange,style='bold'}
-- syntax['pandocSuperscriptHeading'] = {fg=colors.orange,style='bold'}
-- syntax['pandocSubscriptHeading'] = {fg=colors.orange,style='bold'}
-- syntax['pandocLinkDelim'] = {fg=colors.base01}
-- syntax['pandocLinkLabel'] = {fg=colors.blue}
-- syntax['pandocLinkText'] = {fg=colors.blue}
-- syntax['pandocLinkURL'] = {fg=colors.base00}
-- syntax['pandocLinkTitle'] = {fg=colors.base00}
-- syntax['pandocLinkTitleDelim'] = {fg=colors.base01,guisp=colors.base00}
-- syntax['pandocLinkDefinition'] = {fg=colors.cyan,guisp=colors.base00}
-- syntax['pandocLinkDefinitionID'] = {fg=colors.blue,style='bold'}
-- syntax['pandocImageCaption'] = {fg=colors.violet,style='bold'}
-- syntax['pandocFootnoteLink'] = {fg=colors.green}
-- syntax['pandocFootnoteDefLink'] = {fg=colors.green,style='bold'}
-- syntax['pandocFootnoteInline'] = {fg=colors.green,style='bold'}
-- syntax['pandocFootnote'] = {fg=colors.green}
-- syntax['pandocCitationDelim'] = {fg=colors.magenta}
-- syntax['pandocCitation'] = {fg=colors.magenta}
-- syntax['pandocCitationID'] = {fg=colors.magenta}
-- syntax['pandocCitationRef'] = {fg=colors.magenta}
-- syntax['pandocStyleDelim'] = {fg=colors.base01}
-- syntax['pandocEmphasis'] = {fg=colors.base0,style='italics'}
-- syntax['pandocEmphasisNested'] = {fg=colors.base0,style='bold'}
-- syntax['pandocStrongEmphasis'] = {fg=colors.base0,style='bold'}
-- syntax['pandocStrongEmphasisNested'] = {fg=colors.base0,style='bold'}
-- syntax['pandocStrongEmphasisEmphasis'] = {fg=colors.base0,style='bold'}
-- syntax['pandocStrikeout'] = {fg=colors.base01,style='reverse'}
-- syntax['pandocVerbatimInline'] = {fg=colors.yellow}
-- syntax['pandocSuperscript'] = {fg=colors.violet}
-- syntax['pandocSubscript'] = {fg=colors.violet}
-- syntax['pandocRule'] = {fg=colors.blue,style='bold'}
-- syntax['pandocRuleLine'] = {fg=colors.blue,style='bold'}
-- syntax['pandocEscapePair'] = {fg=colors.red,style='bold'}
-- syntax['pandocCitationRef'] = {fg=colors.magenta}
-- syntax['pandocNonBreakingSpace'] = {fg=colors.red,style='reverse'}
-- syntax['pandocMetadataDelim'] = {fg=colors.base01}
-- syntax['pandocMetadata'] = {fg=colors.blue}
-- syntax['pandocMetadataKey'] = {fg=colors.blue}
-- syntax['pandocMetadata'] = {fg=colors.blue,style='bold'}
-- syntax['lCursor'] = syntax['Cursor']
-- syntax['vimVar'] = syntax['Identifier']
-- syntax['vimFunc'] = syntax['Function']
-- syntax['vimUserFunc'] = syntax['Function']
-- syntax['helpSpecial'] = syntax['Special']
-- syntax['vimSet'] = syntax['Normal']
-- syntax['vimSetEqual'] = syntax['Normal']
-- syntax['diffAdded'] = syntax['Statement']
-- syntax['diffLine'] = syntax['Identifier']
-- syntax['gitcommitUntracked'] = syntax['gitcommitComment']
-- syntax['gitcommitDiscarded'] = syntax['gitcommitComment']
-- syntax['gitcommitSelected'] = syntax['gitcommitComment']
-- syntax['gitcommitNoBranch'] = syntax['gitcommitBranch']
-- syntax['gitcommitDiscardedArrow'] = syntax['gitcommitDiscardedFile']
-- syntax['gitcommitSelectedArrow'] = syntax['gitcommitSelectedFile']
-- syntax['gitcommitUnmergedArrow'] = syntax['gitcommitUnmergedFile']
-- syntax['jsFuncCall'] = syntax['Function']
-- syntax['rubySymbol'] = syntax['String']
-- syntax['hsImportParams'] = syntax['Delimiter']
-- syntax['hsDelimTypeExport'] = syntax['Delimiter']
-- syntax['hsModuleStartLabel'] = syntax['hsStructure']
-- syntax['hsModuleWhereLabel'] = syntax['hsModuleStartLabel']
-- syntax['pandocVerbatimBlockDeep'] = syntax['pandocVerbatimBlock']
-- syntax['pandocCodeBlock'] = syntax['pandocVerbatimBlock']
-- syntax['pandocCodeBlockDelim'] = syntax['pandocVerbatimBlock']
-- syntax['pandocTableStructureTop'] = syntax['pandocTableStructre']
-- syntax['pandocTableStructureEnd'] = syntax['pandocTableStructre']
-- syntax['pandocEscapedCharacter'] = syntax['pandocEscapePair']
-- syntax['pandocLineBreak'] = syntax['pandocEscapePair']
-- syntax['pandocMetadataTitle'] = syntax['pandocMetadata']

-- TreeSitter
-- syntax['TSAnnotation'] = syntax['']
-- syntax['TSBoolean'] = syntax['Constant']
-- syntax['TSCharacter'] = syntax['Constant']
-- syntax['TSComment'] = syntax['Comment']
-- syntax['TSConditional'] = syntax['Conditional']
-- syntax['TSConstant'] = syntax['Constant']
-- syntax['TSConstBuiltin'] = syntax['Constant']
-- syntax['TSConstMacro'] = syntax['Constant']
-- syntax['TSError'] = {fg=colors.red}
-- syntax['TSException'] = syntax['Exception']
-- syntax['TSField'] = syntax['Identifier']
-- syntax['TSFloat'] = syntax['Float']
-- syntax['TSFunction'] = syntax['Function']
-- syntax['TSFuncBuiltin'] = syntax['Function']
-- syntax['TSFuncMacro'] = syntax['Function']
-- syntax['TSInclude'] = syntax['Include']
-- syntax['TSKeyword'] = syntax['Keyword']
-- syntax['TSLabel'] = syntax['Label']
-- syntax['TSMethod'] = syntax['Function']
-- syntax['TSNamespace'] = syntax['Identifier']
-- syntax['TSNumber'] = syntax['Constant']
-- syntax['TSOperator'] = syntax['Operator']
-- syntax['TSParameterReference'] = syntax['Identifier']
-- syntax['TSProperty'] = syntax['TSField']
-- syntax['TSPunctDelimiter'] = syntax['Delimiter']
-- syntax['TSPunctBracket'] = syntax['Delimiter']
-- syntax['TSPunctSpecial'] = syntax['Special']
-- syntax['TSRepeat'] = syntax['Repeat']
-- syntax['TSString'] = syntax['Constant']
-- syntax['TSStringRegex'] = syntax['Constant']
-- syntax['TSStringEscape'] = syntax['Constant']
-- syntax['TSStrong'] = {fg=colors.base1,bg=colors.base03,style='bold'}
-- syntax['TSConstructor'] = syntax['Function']
-- syntax['TSKeywordFunction'] = syntax['Identifier']
-- syntax['TSLiteral'] = syntax['Normal']
-- syntax['TSParameter'] = syntax['Identifier']
-- syntax['TSVariable'] = {fg=colors.base1}
-- syntax['TSVariableBuiltin'] = syntax['Identifier']
-- syntax['TSTag'] = syntax['Special']
-- syntax['TSTagDelimiter'] = syntax['Delimiter']
-- syntax['TSTitle'] = syntax['Title']
-- syntax['TSType'] = syntax['Type']
-- syntax['TSTypeBuiltin'] = syntax['Type']
-- syntax['TSEmphasis'] = syntax['']

-- BEGIN Neovim >= 0.8
-- Misc {{{
-- syntax['@comment'] = syntax['Comment']
-- syntax['@error'] = {fg=colors.red}
-- syntax['@none'] = syntax['NONE']
-- -- deprecated in nvim-treesitter 0.10
-- syntax['@preproc'] = syntax['PreProc']
-- -- replacement in nvim-treesitter 0.10
-- syntax['@keyword.directive'] = syntax['PreProc']
-- -- deprecated in nvim-treesitter 0.10
-- syntax['@define'] = syntax['Define']
-- -- replacement in nvim-treesitter 0.10
-- syntax['@keyword.directive.define'] = syntax['Define']
-- syntax['@operator'] = syntax['Operator']
-- }}}

-- Punctuation {{{
-- -- deprecated in nvim-treesitter 0.10
-- syntax['@punctuation.delimiter'] = syntax['Statement']
-- -- replacement in nvim-treesitter 0.10
-- syntax['@markup.raw.delimiter'] = syntax['Statement']
-- syntax['@punctuation.bracket'] = syntax['Delimiter']
-- -- deprecated in nvim-treesitter 0.10
-- syntax['@punctuation.special'] = syntax['Delimiter']
-- -- replacement in nvim-treesitter 0.10
-- syntax['@markup.list'] = syntax['Delimiter']
-- }}}

-- Literals {{{
-- syntax['@string'] = syntax['String']
-- -- deprecated in nvim-treesitter 0.10
-- syntax['@string.regex'] = syntax['String']
-- -- replacement in nvim-treesitter 0.10
-- syntax['@string.regexp'] = syntax['String']
-- syntax['@string.escape'] = syntax['Special']
-- -- deprecated in nvim-treesitter 0.10
-- syntax['@string.special'] = syntax['Special']
-- -- replacement in nvim-treesitter 0.10
-- syntax['@markup.link.label'] = syntax['Constant']
-- syntax['@character'] = syntax['Character']
-- syntax['@character.special'] = syntax['Special']
-- syntax['@boolean'] = syntax['Boolean']
-- syntax['@number'] = syntax['Number']
-- -- deprecated in nvim-treesitter 0.10
-- syntax['@float'] = syntax['Float']
-- -- replacement in nvim-treesitter 0.10
-- syntax['@number.float'] = syntax['Float']
-- }}}

-- Functions {{{
-- syntax['@function'] = syntax['Function']
-- syntax['@function.call'] = syntax['Function']
-- syntax['@function.builtin'] = syntax['Function']
-- syntax['@function.macro'] = syntax['Macro']
-- -- deprecated in nvim-treesitter 0.10
-- syntax['@method'] = syntax['Function']
-- syntax['@method.call'] = syntax['Function']
-- -- replacement in nvim-treesitter 0.10
-- syntax['@function.method'] = syntax['Function']
-- syntax['@function.method.call'] = syntax['Function']
-- syntax['@constructor'] = syntax['Special']
-- -- deprecated in nvim-treesitter 0.10
-- syntax['@parameter'] = syntax['Normal']
-- -- replacement in nvim-treesitter 0.10
-- syntax['@variable.parameter'] = syntax['Normal']
-- }}}

-- Keywords {{{
-- syntax['@keyword'] = syntax['Keyword']
-- syntax['@keyword.function'] = syntax['Keyword']
-- syntax['@keyword.operator'] = syntax['Keyword']
-- syntax['@keyword.return'] = syntax['Keyword']
-- -- deprecated in nvim-treesitter 0.10
-- syntax['@conditional'] = syntax['Conditional']
-- syntax['@repeat'] = syntax['Repeat']
-- syntax['@debug'] = syntax['Debug']
-- -- replacement in nvim-treesitter 0.10
-- syntax['@keyword.conditional'] = syntax['Conditional']
-- syntax['@keyword.repeat'] = syntax['Repeat']
-- syntax['@keyword.debug'] = syntax['Debug']
-- syntax['@label'] = syntax['Label']
-- -- deprecated in nvim-treesitter 0.10
-- syntax['@include'] = syntax['Include']
-- syntax['@exception'] = syntax['Exception']
-- -- replacement in nvim-treesitter 0.10
-- syntax['@keyword.import'] = syntax['Include']
-- syntax['@keyword.exception'] = syntax['Exception']
-- }}}

-- Types {{{
-- syntax['@type'] = syntax['Type']
-- syntax['@type.builtin'] = syntax['Type']
-- syntax['@type.qualifier'] = syntax['Type']
-- syntax['@type.definition'] = syntax['Typedef']
-- -- deprecated in nvim-treesitter 0.10
-- syntax['@storageclass'] = syntax['StorageClass']
-- -- replacement in nvim-treesitter 0.10
-- syntax['@keyword.storage'] = syntax['StorageClass']
-- syntax['@attribute'] = syntax['Identifier']
-- -- deprecated in nvim-treesitter 0.10
-- syntax['@field'] = syntax['Identifier']
-- -- replacement in nvim-treesitter 0.10
-- syntax['@variable.member'] = syntax['Identifier']
-- syntax['@property'] = syntax['Identifier']
-- }}}

-- Identifiers {{{
-- syntax['@variable'] = {fg=colors.base1}
-- syntax['@variable.builtin'] = syntax['Special']
-- syntax['@constant'] = syntax['Constant']
-- syntax['@constant.builtin'] = syntax['Type']
-- syntax['@constant.macro'] = syntax['Define']
-- syntax['@namespace'] = syntax['Identifier']
-- syntax['@symbol'] = syntax['Identifier']
-- -- deprecated in nvim-treesitter 0.10
-- syntax['@module'] = syntax['Identifier']
-- -- replacement in nvim-treesitter 0.10
-- syntax['@string.special.symbol'] = syntax['Identifier']
-- }}}

-- Text {{{
-- syntax['@text'] = syntax['Normal']
-- -- deprecated in nvim-treesitter 0.10
-- syntax['@text.strong'] = {fg=colors.base1,bg=colors.base03,style='bold'}
-- syntax['@text.emphasis'] = {fg=colors.base1,bg=colors.base03,style='bold'}
-- syntax['@text.underline'] = syntax['Underlined']
-- syntax['@text.strike'] = syntax['Strikethrough']
-- -- replacement in nvim-treesitter 0.10
-- syntax['@markup.strong'] = {fg=colors.base1,bg=colors.base03,style='bold'}
-- syntax['@markup.emphasis'] = {fg=colors.base1,bg=colors.base03,style='bold'}
-- syntax['@markup.italic'] = {fg=colors.base1,bg=colors.base03,style='italics'}
-- syntax['@markup.underline'] = syntax['Underlined']
-- syntax['@markup.strike'] = syntax['Strikethrough']
-- syntax['@markup.strikethrough'] = syntax['Strikethrough']
-- -- deprecated in nvim-treesitter 0.10
-- syntax['@text.title'] = syntax['Title']
-- syntax['@text.literal'] = syntax['String']
-- -- replacement in nvim-treesitter 0.10
-- syntax['@markup.heading'] = syntax['Title']
-- syntax['@markup.raw'] = syntax['String']
-- -- deprecated in nvim-treesitter 0.10
-- syntax['@text.uri'] = syntax['Underlined']
-- -- replacement in nvim-treesitter 0.10
-- syntax['@string.special.url'] = syntax['Underlined']
-- syntax['@markup.link.url'] = syntax['Underlined']
-- -- deprecated in nvim-treesitter 0.10
-- syntax['@text.math'] = syntax['Special']
-- syntax['@text.environment'] = syntax['Macro']
-- syntax['@text.environment.name'] = syntax['Type']
-- -- replacement in nvim-treesitter 0.10
-- syntax['@markup.math'] = syntax['@text.emphasis']
-- syntax['@markup.environment'] = syntax['Macro']
-- syntax['@markup.environment.name'] = syntax['Type']
-- -- deprecated in nvim-treesitter 0.10
-- syntax['@text.reference'] = syntax['Constant']
-- -- replacement in nvim-treesitter 0.10
-- syntax['@markup.link'] = syntax['Constant']
-- -- deprecated in nvim-treesitter 0.10
-- syntax['@text.todo'] = syntax['Todo']
-- -- replacement in nvim-treesitter 0.10
-- syntax['@markup.list.checked'] = syntax['Todo']
-- syntax['@markup.list.unchecked'] = syntax['Todo']
-- syntax['@comment.todo'] = syntax['Todo']
-- -- deprecated in nvim-treesitter 0.10
-- syntax['@text.note'] = syntax['WarningMsg']
-- -- replacement in nvim-treesitter 0.10
-- syntax['@comment.info'] = syntax['WarningMsg']
-- syntax['@comment.hint'] = syntax['WarningMsg']
-- -- deprecated in nvim-treesitter 0.10
-- syntax['@text.warning'] = syntax['WarningMsg']
-- -- replacement in nvim-treesitter 0.10
-- syntax['@comment.warning'] = syntax['WarningMsg']
-- -- deprecated in nvim-treesitter 0.10
-- syntax['@text.danger'] = {fg=colors.red,style='bold'}
-- -- replacement in nvim-treesitter 0.10
-- syntax['@comment.danger'] = {fg=colors.red,style='bold'}
-- }}}

-- Tags {{{
-- syntax['@tag'] = syntax['Tag']
-- syntax['@tag.attribute'] = syntax['Identifier']
-- syntax['@tag.delimiter'] = syntax['Delimiter']
-- }}}
-- END Neovim >= 0.8

-- Lsp
-- syntax['LspReferenceRead'] = {fg=colors.none,style='underline'}
-- syntax['LspReferenceText'] = syntax['LspReferenceRead']
-- syntax['LspReferenceWrite'] = {fg=colors.none,style='underline,bold'}
-- syntax['LspSagaFinderSelection'] = syntax['Search']
-- syntax['TargetWord'] = syntax['Title']

-- Unknowns

-- syntax['StatusLineTerm'] = syntax['StatusLine']
-- syntax['StatusLineTermNC'] = syntax['StatusLineNC']

-- syntax['DiagnosticError'] = {fg=colors.red,guisp=colors.red,style='none'}
-- syntax['DiagnosticWarn'] = {fg=colors.yellow,guisp=colors.yellow,style='none'}
-- syntax['DiagnosticInfo'] = {fg=colors.cyan,guisp=colors.cyan,style='none'}
-- syntax['DiagnosticHint'] = {fg=colors.green,guisp=colors.green,style='none'}
-- syntax['DiagnosticUnderlineError'] = {fg=colors.none,guisp=colors.red,style='underline'}
-- syntax['DiagnosticUnderlineWarn'] = {fg=colors.none,guisp=colors.yellow,style='underline'}
-- syntax['DiagnosticUnderlineInfo'] = {fg=colors.none,guisp=colors.cyan,style='underline'}
-- syntax['DiagnosticUnderlineHint'] = {fg=colors.none,guisp=colors.green,style='underline'}

-- syntax['GitSignsAdd'] = syntax['DiffAdd']
-- syntax['GitSignsChange'] = syntax['DiffChange']
-- syntax['GitSignsDelete'] = syntax['DiffDelete']
-- syntax['VGitSignAdd'] = syntax['DiffAdd']
-- syntax['VgitSignChange'] = syntax['DiffChange']
-- syntax['VGitSignRemove'] = syntax['DiffDelete']

-- nvim-cmp syntax support
-- syntax['CmpDocumentation' ] = {fg=colors.base2, bg=colors.base02 }
-- syntax['CmpDocumentationBorder' ] = {fg=colors.base2, bg=colors.base02 }
-- syntax['CmpItemAbbr' ] = {fg=colors.base1, bg=colors.none }
-- syntax['CmpItemAbbrDeprecated' ] = {fg=colors.base0, bg=colors.none }
-- syntax['CmpItemAbbrMatch' ] = {fg=colors.base2, bg=colors.none }
-- syntax['CmpItemAbbrMatchFuzzy' ] = {fg=colors.base2, bg=colors.none }
-- syntax['CmpItemKindDefault' ] = {fg=colors.base1, bg=colors.none }
-- syntax['CmpItemMenu' ] = {fg=colors.base1, bg=colors.none }
-- syntax['CmpItemKindKeyword' ] = {fg=colors.yellow, bg=colors.none }
-- syntax['CmpItemKindVariable' ] = {fg=colors.green, bg=colors.none }
-- syntax['CmpItemKindConstant' ] = {fg=colors.base1, bg=colors.none }
-- syntax['CmpItemKindReference' ] = {fg=colors.base1, bg=colors.none }
-- syntax['CmpItemKindValue' ] = {fg=colors.base1, bg=colors.none }
-- syntax['CmpItemKindFunction' ] = {fg=colors.blue, bg=colors.none }
-- syntax['CmpItemKindMethod' ] = {fg=colors.blue, bg=colors.none }
-- syntax['CmpItemKindConstructor' ] = {fg=colors.blue, bg=colors.none }
-- syntax['CmpItemKindClass' ] = {fg=colors.red, bg=colors.none }
-- syntax['CmpItemKindInterface' ] = {fg=colors.base1, bg=colors.none }
-- syntax['CmpItemKindStruct' ] = {fg=colors.base1, bg=colors.none }
-- syntax['CmpItemKindEvent' ] = {fg=colors.base1, bg=colors.none }
-- syntax['CmpItemKindEnum' ] = {fg=colors.base1, bg=colors.none }
-- syntax['CmpItemKindUnit' ] = {fg=colors.base1, bg=colors.none }
-- syntax['CmpItemKindModule' ] = {fg=colors.base1, bg=colors.none }
-- syntax['CmpItemKindProperty' ] = {fg=colors.base1, bg=colors.none }
-- syntax['CmpItemKindField' ] = {fg=colors.base1, bg=colors.none }
-- syntax['CmpItemKindTypeParameter' ] = {fg=colors.base1, bg=colors.none }
-- syntax['CmpItemKindEnumMember' ] = {fg=colors.base1, bg=colors.none }
-- syntax['CmpItemKindOperator' ] = {fg=colors.base1, bg=colors.none }
-- syntax['CmpItemKindSnippet' ] = {fg=colors.orange, bg=colors.none }

-- syntax['NavicIconsFile'] = syntax['CmpItemKindFile']
-- syntax['NavicIconsModule'] = syntax['CmpItemKindModule']
-- syntax['NavicIconsNamespace'] = syntax['CmpItemKindModule']
-- syntax['NavicIconsPackage'] = syntax['CmpItemKindModule']
-- syntax['NavicIconsClass'] = syntax['CmpItemKindClass']
-- syntax['NavicIconsMethod'] = syntax['CmpItemKindMethod']
-- syntax['NavicIconsProperty'] = syntax['CmpItemKindProperty']
-- syntax['NavicIconsField'] = syntax['CmpItemKindField']
-- syntax['NavicIconsConstructor'] = syntax['CmpItemKindConstructor']
-- syntax['NavicIconsEnum'] = syntax['CmpItemKindEnum']
-- syntax['NavicIconsInterface'] = syntax['CmpItemKindInterface']
-- syntax['NavicIconsFunction'] = syntax['CmpItemKindFunction']
-- syntax['NavicIconsVariable'] = syntax ['CmpItemKindVariable']
-- syntax['NavicIconsConstant'] = syntax['CmpItemKindConstant']
-- syntax['NavicIconsString'] = syntax['String']
-- syntax['NavicIconsNumber'] = syntax['Number']
-- syntax['NavicIconsBoolean'] = syntax['Boolean']
-- syntax['NavicIconsArray'] = syntax['CmpItemKindClass']
-- syntax['NavicIconsObject'] = syntax['CmpItemKindClass']
-- syntax['NavicIconsKey'] = syntax['CmpItemKindKeyword']
-- syntax['NavicIconsKeyword'] = syntax['CmpItemKindKeyword']
-- syntax['NavicIconsNull'] =  {fg=colors.blue, bg=colors.none }
-- syntax['NavicIconsEnumMember'] = syntax['CmpItemKindEnumMember']
-- syntax['NavicIconsStruct'] = syntax['CmpItemKindStruct']
-- syntax['NavicIconsEvent'] = syntax['CmpItemKindEvent']
-- syntax['NavicIconsOperator'] = syntax['CmpItemKindOperator']
-- syntax['NavicIconsTypeParameter'] = syntax['CmpItemKindTypeParameter']
-- syntax['NavicText'] = syntax['LineNr']
-- syntax['NavicSeparator'] = syntax['Comment']


for group, rule in pairs(syntax) do
	vim.cmd(string.format("hi! %s term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE", group))
	local fg = ""
	if rule.fg then fg = string.format(' guifg=%s ctermfg=%s', rule.fg['hex'], rule.fg['term']) end
	local bg = ""
	if rule.bg then bg = string.format(' guibg=%s ctermbg=%s', rule.bg['hex'], rule.bg['term']) end
	local style = ""
	if rule.style then style = string.format(' gui=%s cterm=%s', rule.style, rule.style) end
	vim.cmd(string.format( 'hi! %s%s%s%s', group, fg, bg, style))
end
