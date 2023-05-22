# ../FruitRoulette/index.asmX
@import gpu;

@using label grapes;
@using label cherry;
@using label lemon;
@using label orange;

@Using subprogram check_emoji_1;
@Using subprogram check_emoji_2;
@Using subprogram check_emoji_3;
@Using subprogram check_emoji_4;

@using subprogram start;
@execute goto_sbp start;


#----------------------------------------------------------------
@subprogram start:
    @call print(RED);
    @call print('\t\t\t┏━━━━┳━━━━┳━━━━┳━━━━┓┏━');
    @execute rand 1 4;
    @set cell_1 Int $ret;
    @execute rand 1 4;
    @set cell_2 Int $ret;
    @execute rand 1 4;
    @set cell_3 Int $ret;
    @execute rand 1 4;
    @set cell_4 Int $ret;
    @route "\t\t\t┃\u0020";
    @invoke 0x05;
    @execute goto_sbp check_emoji_1;
    @route "\u0020┃\u0020";
    @invoke 0x05;
    @execute goto_sbp check_emoji_2;
    @route "\u0020┃\u0020";
    @invoke 0x05;
    @execute goto_sbp check_emoji_3;
    @route "\u0020┃\u0020";
    @invoke 0x05;
    @execute goto_sbp check_emoji_4;
    @route "\u0020┣┛";
    @invoke 0x05;
    @call print('\n\t\t\t┗━━━━┻━━━━┻━━━━┻━━━━┛');
    @call print(RESET);
#----------------------------------------------------------------


#----------------------------------------------------------------
@subprogram check_emoji_1:
    @execute eq set::cell_1 0x01;
    @execute jmp_equal grapes;
    @execute eq set::cell_1 0x02;
    @execute jmp_equal cherry;
    @execute eq set::cell_1 0x03;
    @execute jmp_equal lemon;
    @execute eq set::cell_1 0x04;
    @execute jmp_equal orange;

@subprogram check_emoji_2:
    @execute eq set::cell_2 0x01;
    @execute jmp_equal grapes;
    @execute eq set::cell_2 0x02;
    @execute jmp_equal cherry;
    @execute eq set::cell_2 0x03;
    @execute jmp_equal lemon;
    @execute eq set::cell_2 0x04;
    @execute jmp_equal orange;

@subprogram check_emoji_3:
    @execute eq set::cell_3 0x01;
    @execute jmp_equal grapes;
    @execute eq set::cell_3 0x02;
    @execute jmp_equal cherry;
    @execute eq set::cell_3 0x03;
    @execute jmp_equal lemon;
    @execute eq set::cell_3 0x04;
    @execute jmp_equal orange;

@subprogram check_emoji_4:
    @execute eq set::cell_4 0x01;
    @execute jmp_equal grapes;
    @execute eq set::cell_4 0x02;
    @execute jmp_equal cherry;
    @execute eq set::cell_4 0x03;
    @execute jmp_equal lemon;
    @execute eq set::cell_4 0x04;
    @execute jmp_equal orange;
#----------------------------------------------------------------

@label grapes:
    @route '🍇';
    @invoke 0x05;

@label cherry:
    @route '🍒';
    @invoke 0x05;

@label lemon:
    @route '🍋';
    @invoke 0x05;

@label orange:
    @route '🍊';
    @invoke 0x05;