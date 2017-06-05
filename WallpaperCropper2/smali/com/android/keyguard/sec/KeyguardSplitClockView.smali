.class public Lcom/android/keyguard/sec/KeyguardSplitClockView;
.super Landroid/widget/LinearLayout;
.source "Unknown"


# static fields
.field private static final LEFT_MARGIN_AFTER_KOR_AMPM:I = -0x7

.field private static final MSG_DATE_ON_SETTINGS_CHANGED:I = 0x64

.field private static final SETUP_WIZARD_FINISHED:Ljava/lang/String; = "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

.field public static final THEME_APPLY:Ljava/lang/String; = "com.samsung.android.theme.themecenter.THEME_APPLY"


# instance fields
.field private mAmPmView:Landroid/widget/TextClock;

.field private mAmPmViewKor:Landroid/widget/TextClock;

.field private mDateSettingsObserver:Landroid/database/ContentObserver;

.field private mDateView:Landroid/widget/TextClock;

.field private final mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mTimeView:Landroid/widget/TextClock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/keyguard/sec/KeyguardSplitClockView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardSplitClockView$1;-><init>(Lcom/android/keyguard/sec/KeyguardSplitClockView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardSplitClockView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardSplitClockView$2;-><init>(Lcom/android/keyguard/sec/KeyguardSplitClockView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardSplitClockView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->updatePatterns()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/KeyguardSplitClockView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->updateChildView()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/KeyguardSplitClockView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->handleDateOnSettngsChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/KeyguardSplitClockView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static getAmPmPartEndIndex(Ljava/lang/String;Z)I
    .locals 9

    const/16 v8, 0x61

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez p1, :cond_1

    add-int/lit8 v0, v6, -0x1

    move v5, v0

    move v4, v1

    :goto_0
    if-gez v5, :cond_8

    :cond_0
    move v0, v4

    if-nez v0, :cond_f

    :goto_1
    return v3

    :cond_1
    move v5, v1

    move v4, v1

    :goto_2
    if-ge v5, v6, :cond_0

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v8, :cond_3

    move v0, v1

    :goto_3
    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-nez v0, :cond_4

    :goto_4
    if-eqz v0, :cond_5

    :cond_2
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v4, v2

    goto :goto_4

    :cond_5
    if-nez v7, :cond_2

    if-eqz v5, :cond_6

    if-nez v4, :cond_7

    move v0, v3

    :goto_5
    return v0

    :cond_6
    return v3

    :cond_7
    add-int/lit8 v0, v5, -0x1

    goto :goto_5

    :cond_8
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v8, :cond_a

    move v0, v1

    :goto_6
    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-nez v0, :cond_b

    :goto_7
    if-eqz v0, :cond_c

    :cond_9
    add-int/lit8 v0, v5, -0x1

    move v5, v0

    goto :goto_0

    :cond_a
    move v0, v2

    goto :goto_6

    :cond_b
    move v4, v2

    goto :goto_7

    :cond_c
    if-nez v7, :cond_9

    add-int/lit8 v0, v6, -0x1

    if-eq v5, v0, :cond_d

    if-nez v4, :cond_e

    :goto_8
    return v3

    :cond_d
    return v3

    :cond_e
    add-int/lit8 v3, v5, 0x1

    goto :goto_8

    :cond_f
    move v3, v1

    goto :goto_1
.end method

.method private getDateFormat()Ljava/lang/String;
    .locals 10

    const/4 v7, 0x1

    const/4 v4, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xd05

    const/16 v2, 0xa

    const/16 v3, 0x16

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "MM-dd-yyyy"

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v1, ""

    const-string/jumbo v0, ""

    move-object v2, v0

    move-object v3, v1

    move v0, v4

    move v1, v4

    :goto_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v0, v8, :cond_1

    :cond_0
    const-string/jumbo v0, ""

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    if-eq v0, v7, :cond_4

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lt v0, v1, :cond_5

    if-nez v4, :cond_7

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->status_view_wday_day_month_no_year:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_1
    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2f

    if-ne v8, v9, :cond_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2d

    if-eq v8, v9, :cond_2

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2e

    if-eq v8, v9, :cond_2

    packed-switch v1, :pswitch_data_0

    :goto_4
    const/4 v8, 0x2

    if-eq v1, v8, :cond_0

    goto :goto_3

    :pswitch_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :pswitch_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_4
    move v4, v7

    goto :goto_1

    :cond_5
    if-nez v4, :cond_6

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->abbrev_wday_abbrev_month_day_no_year:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->status_view_wday_day_month_no_year:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->abbrev_wday_abbrev_month_day_no_year:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleDateOnSettngsChanged()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mDateView:Landroid/widget/TextClock;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mDateView:Landroid/widget/TextClock;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->isShowDateOn()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x4

    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/TextClock;->setVisibility(I)V

    goto :goto_0
.end method

.method private isShowDateOn()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isDateOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isShowClockAndDate(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateChildView()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$color;->theme_status_clock_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mTimeView:Landroid/widget/TextClock;

    if-nez v1, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mAmPmView:Landroid/widget/TextClock;

    if-nez v1, :cond_1

    :goto_1
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mAmPmViewKor:Landroid/widget/TextClock;

    if-nez v1, :cond_2

    :goto_2
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mDateView:Landroid/widget/TextClock;

    if-nez v1, :cond_3

    :goto_3
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mTimeView:Landroid/widget/TextClock;

    invoke-virtual {v1, v0}, Landroid/widget/TextClock;->setTextColor(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mAmPmView:Landroid/widget/TextClock;

    invoke-virtual {v1, v0}, Landroid/widget/TextClock;->setTextColor(I)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mAmPmViewKor:Landroid/widget/TextClock;

    invoke-virtual {v1, v0}, Landroid/widget/TextClock;->setTextColor(I)V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mDateView:Landroid/widget/TextClock;

    invoke-virtual {v1, v0}, Landroid/widget/TextClock;->setTextColor(I)V

    goto :goto_3
.end method

.method private updatePatterns()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormatString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mTimeView:Landroid/widget/TextClock;

    invoke-virtual {v0}, Landroid/widget/TextClock;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const-string/jumbo v1, "ko"

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getCurrentLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "ja"

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getCurrentLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v2, v4}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->getAmPmPartEndIndex(Ljava/lang/String;Z)I

    move-result v3

    if-eq v3, v6, :cond_4

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mAmPmViewKor:Landroid/widget/TextClock;

    invoke-virtual {v3, v5}, Landroid/widget/TextClock;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mAmPmView:Landroid/widget/TextClock;

    invoke-virtual {v3, v4}, Landroid/widget/TextClock;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mAmPmView:Landroid/widget/TextClock;

    invoke-virtual {v3, v2}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mAmPmView:Landroid/widget/TextClock;

    invoke-virtual {v3, v2}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mTimeView:Landroid/widget/TextClock;

    invoke-virtual {v2, v1}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mTimeView:Landroid/widget/TextClock;

    invoke-virtual {v2, v1}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mTimeView:Landroid/widget/TextClock;

    invoke-virtual {v1, v0}, Landroid/widget/TextClock;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mDateView:Landroid/widget/TextClock;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->getDateFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mDateView:Landroid/widget/TextClock;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->getDateFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-static {v2, v7}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->getAmPmPartEndIndex(Ljava/lang/String;Z)I

    move-result v1

    if-eq v1, v6, :cond_1

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mAmPmViewKor:Landroid/widget/TextClock;

    invoke-virtual {v2, v4}, Landroid/widget/TextClock;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mAmPmView:Landroid/widget/TextClock;

    invoke-virtual {v2, v5}, Landroid/widget/TextClock;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mAmPmViewKor:Landroid/widget/TextClock;

    invoke-virtual {v2, v3}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mAmPmViewKor:Landroid/widget/TextClock;

    invoke-virtual {v2, v3}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-int v2, v2

    mul-int/lit8 v2, v2, -0x7

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    :cond_1
    const-string/jumbo v1, ""

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mAmPmViewKor:Landroid/widget/TextClock;

    invoke-virtual {v1, v5}, Landroid/widget/TextClock;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mAmPmView:Landroid/widget/TextClock;

    invoke-virtual {v1, v5}, Landroid/widget/TextClock;->setVisibility(I)V

    :goto_1
    move-object v1, v2

    goto :goto_0

    :cond_2
    invoke-static {v2, v7}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->getAmPmPartEndIndex(Ljava/lang/String;Z)I

    move-result v1

    if-eq v1, v6, :cond_3

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mAmPmViewKor:Landroid/widget/TextClock;

    invoke-virtual {v3, v5}, Landroid/widget/TextClock;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mAmPmView:Landroid/widget/TextClock;

    invoke-virtual {v3, v4}, Landroid/widget/TextClock;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mAmPmView:Landroid/widget/TextClock;

    invoke-virtual {v3, v2}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mAmPmView:Landroid/widget/TextClock;

    invoke-virtual {v3, v2}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v1, ""

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mAmPmViewKor:Landroid/widget/TextClock;

    invoke-virtual {v1, v5}, Landroid/widget/TextClock;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mAmPmView:Landroid/widget/TextClock;

    invoke-virtual {v1, v5}, Landroid/widget/TextClock;->setVisibility(I)V

    goto :goto_1

    :cond_4
    const-string/jumbo v1, ""

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mAmPmViewKor:Landroid/widget/TextClock;

    invoke-virtual {v1, v5}, Landroid/widget/TextClock;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mAmPmView:Landroid/widget/TextClock;

    invoke-virtual {v1, v5}, Landroid/widget/TextClock;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    new-instance v0, Lcom/android/keyguard/sec/KeyguardSplitClockView$3;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/KeyguardSplitClockView$3;-><init>(Lcom/android/keyguard/sec/KeyguardSplitClockView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mDateSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lock_screen_date_and_year"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mDateSettingsObserver:Landroid/database/ContentObserver;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v5, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->updatePatterns()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mDateSettingsObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mDateSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    sget v0, Lcom/android/keyguard/R$id;->keyguard_time_view:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mTimeView:Landroid/widget/TextClock;

    sget v0, Lcom/android/keyguard/R$id;->keyguard_am_pm_view:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mAmPmView:Landroid/widget/TextClock;

    sget v0, Lcom/android/keyguard/R$id;->keyguard_am_pm_view_kor:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mAmPmViewKor:Landroid/widget/TextClock;

    sget v0, Lcom/android/keyguard/R$id;->keyguard_date_view:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mDateView:Landroid/widget/TextClock;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->isShowDateOn()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mDateView:Landroid/widget/TextClock;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setVisibility(I)V

    goto :goto_0
.end method
