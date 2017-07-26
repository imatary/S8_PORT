.class public Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;
.super Landroid/app/Activity;
.source "DreamTNCActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "DreamTNCActivity"


# instance fields
.field private mAgree:Landroid/widget/CheckBox;

.field private mAgreeText:Landroid/widget/TextView;

.field private mBottomLayout:Landroid/widget/RelativeLayout;

.field private mDetails:Landroid/widget/TextView;

.field private mDisagree:Landroid/widget/Button;

.field private mNext:Landroid/widget/Button;

.field mNextClickable:Z

.field private mPrivacyNotice:Landroid/widget/TextView;

.field mPrivacyNoticeClickable:Z

.field private mRuntimePermission:Landroid/widget/TextView;

.field private mTermsOfService:Landroid/widget/TextView;

.field mTermsofServiceClickable:Z

.field private mThemeContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v0, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mTermsofServiceClickable:Z

    iput-boolean v0, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mPrivacyNoticeClickable:Z

    iput-boolean v0, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mNextClickable:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->launchDetailsActivity(Z)V

    return-void
.end method

.method private initialize()V
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v1, "DreamTNCActivity"

    const-string/jumbo v2, "initialize"

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    sget v2, Lcom/sec/game/gamecast/common/R$string;->DREAM_GH_HEADER_TERMS_AND_CONDITIONS:I

    invoke-virtual {p0, v2}, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    sget v1, Lcom/sec/game/gamecast/common/R$id;->details:I

    invoke-virtual {p0, v1}, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mDetails:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mThemeContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mDetails:Landroid/widget/TextView;

    invoke-static {v1, v2, v4}, Lcom/sec/game/gamecast/common/utility/ThemeUtil;->setTextColorToColorSecondary(Landroid/content/Context;Ljava/lang/Object;Z)V

    sget v1, Lcom/sec/game/gamecast/common/R$id;->tv_terms_of_service:I

    invoke-virtual {p0, v1}, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mTermsOfService:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mTermsOfService:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "<u>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/game/gamecast/common/R$string;->DREAM_GH_HEADER_TERMS_AND_CONDITIONS:I

    invoke-virtual {p0, v3}, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "</u>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mTermsOfService:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/sec/game/gamecast/common/R$string;->DREAM_GH_HEADER_TERMS_AND_CONDITIONS:I

    invoke-virtual {p0, v3}, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/game/gamecast/common/R$string;->MIDS_GH_TBOPT_BUTTON:I

    invoke-virtual {p0, v3}, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mTermsOfService:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/sec/game/gamecast/common/R$id;->tv_privacy_notice:I

    invoke-virtual {p0, v1}, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mPrivacyNotice:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mPrivacyNotice:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "<u>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/game/gamecast/common/R$string;->MIDS_GH_HEADER_PRIVACY_POLICY:I

    invoke-virtual {p0, v3}, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "</u>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mPrivacyNotice:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/sec/game/gamecast/common/R$string;->MIDS_GH_HEADER_PRIVACY_POLICY:I

    invoke-virtual {p0, v3}, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/game/gamecast/common/R$string;->MIDS_GH_TBOPT_BUTTON:I

    invoke-virtual {p0, v3}, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mPrivacyNotice:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/sec/game/gamecast/common/R$id;->tv_runtime_permission:I

    invoke-virtual {p0, v1}, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mRuntimePermission:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/sec/game/gamecast/common/R$string;->MIDS_GH_HEADER_PERMISSIONS:I

    invoke-virtual {p0, v2}, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/game/gamecast/common/utility/TncUtil;->getToolsPermissionContent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mRuntimePermission:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mRuntimePermission:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/game/gamecast/common/utility/TncUtil;->getToolsPermissionContent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mThemeContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mRuntimePermission:Landroid/widget/TextView;

    invoke-static {v1, v2, v4}, Lcom/sec/game/gamecast/common/utility/ThemeUtil;->setTextColorToColorSecondary(Landroid/content/Context;Ljava/lang/Object;Z)V

    sget v1, Lcom/sec/game/gamecast/common/R$id;->tnc_check_box:I

    invoke-virtual {p0, v1}, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mAgree:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mAgree:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/sec/game/gamecast/common/R$id;->tnc_text_view:I

    invoke-virtual {p0, v1}, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mAgreeText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mAgreeText:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/sec/game/gamecast/common/R$id;->rl_bottom:I

    invoke-virtual {p0, v1}, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mBottomLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mThemeContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/game/gamecast/common/utility/ThemeUtil;->isThemeOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mTermsOfService:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mThemeContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sec/game/gamecast/common/R$color;->hyperlink_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mPrivacyNotice:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mThemeContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sec/game/gamecast/common/R$color;->hyperlink_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mAgreeText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mThemeContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sec/game/gamecast/common/R$color;->primary_dark:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mBottomLayout:Landroid/widget/RelativeLayout;

    sget v2, Lcom/sec/game/gamecast/common/R$drawable;->tw_sub_action_bar_bg_mtrl:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->setNextButton()V

    return-void
.end method

.method private launchDetailsActivity(Z)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sec/game/gamecast/common/activity/DreamTNCDetailsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "isTOS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    const-string/jumbo v0, "DreamTNCActivity"

    const-string/jumbo v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->initialize()V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    const-string/jumbo v0, "DreamTNCActivity"

    const-string/jumbo v1, "onBackPressed : all options except no_alerts_during_game to false"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mThemeContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/model/SettingData;->setDisplayGameTools(Landroid/content/Context;Z)V

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    const-wide/16 v4, 0x12c

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    sget v2, Lcom/sec/game/gamecast/common/R$id;->button_next:I

    if-ne v0, v2, :cond_1

    iget-boolean v2, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mNextClickable:Z

    if-eqz v2, :cond_1

    iput-boolean v3, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mNextClickable:Z

    new-instance v2, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity$1;

    invoke-direct {v2, p0}, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity$1;-><init>(Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;)V

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string/jumbo v2, "002"

    const-string/jumbo v3, "0006"

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v2, Lcom/sec/game/gamecast/common/R$id;->tv_terms_of_service:I

    if-ne v0, v2, :cond_2

    iget-boolean v2, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mTermsofServiceClickable:Z

    if-eqz v2, :cond_2

    iput-boolean v3, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mTermsofServiceClickable:Z

    new-instance v2, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity$2;

    invoke-direct {v2, p0}, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity$2;-><init>(Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;)V

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string/jumbo v2, "002"

    const-string/jumbo v3, "0007"

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget v2, Lcom/sec/game/gamecast/common/R$id;->tv_privacy_notice:I

    if-ne v0, v2, :cond_3

    iget-boolean v2, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mPrivacyNoticeClickable:Z

    if-eqz v2, :cond_3

    iput-boolean v3, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mPrivacyNoticeClickable:Z

    new-instance v2, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity$3;

    invoke-direct {v2, p0}, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity$3;-><init>(Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;)V

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string/jumbo v2, "002"

    const-string/jumbo v3, "0008"

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget v2, Lcom/sec/game/gamecast/common/R$id;->tnc_check_box:I

    if-ne v0, v2, :cond_4

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->setNextButton()V

    goto :goto_0

    :cond_4
    sget v2, Lcom/sec/game/gamecast/common/R$id;->tnc_text_view:I

    if-ne v0, v2, :cond_5

    iget-object v2, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mAgree:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->toggle()V

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->setNextButton()V

    goto :goto_0

    :cond_5
    sget v2, Lcom/sec/game/gamecast/common/R$id;->button_disagree:I

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mThemeContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/model/SettingData;->setDisplayGameTools(Landroid/content/Context;Z)V

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->finish()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const/16 v2, 0x400

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string/jumbo v0, "DreamTNCActivity"

    const-string/jumbo v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    :cond_0
    :goto_0
    sget v0, Lcom/sec/game/gamecast/common/R$layout;->layout_dream_tnc:I

    invoke-virtual {p0, v0}, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->initialize()V

    return-void

    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/model/SettingData;->isDisclaimerConfirm(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/model/SettingData;->setDisplayGameTools(Landroid/content/Context;Z)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->finish()V

    :cond_0
    const-string/jumbo v0, "DreamTNCActivity"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/sec/game/gamecast/common/R$layout;->layout_dream_tnc:I

    invoke-virtual {p0, v0}, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->setContentView(I)V

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/sec/game/gamecast/common/R$style;->AppTheme:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mThemeContext:Landroid/content/Context;

    const-string/jumbo v0, "002"

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 11

    const/4 v8, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v3, 0x0

    const-string/jumbo v10, ""

    iget-object v0, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mThemeContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/model/SettingData;->isDisclaimerConfirm(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->setResult(I)V

    const-string/jumbo v3, "Agree"

    const-string/jumbo v10, "start"

    :goto_0
    iget-object v0, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mThemeContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->getInstance(Landroid/content/Context;)Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mThemeContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "GL22"

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->insertFeatureLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "GLTNCS"

    const-string/jumbo v0, "value"

    invoke-static {v0, v10}, Lcom/sec/game/gamecast/common/utility/UserDataCollector;->makeJsonObj(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    move-object v9, v8

    invoke-static/range {v4 .. v9}, Lcom/sec/game/gamecast/common/utility/UserDataCollector;->sendBroadIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->setResult(I)V

    const-string/jumbo v3, "Disagree"

    const-string/jumbo v10, "cancel"

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public setNextButton()V
    .locals 4

    const/4 v3, 0x2

    const/4 v1, 0x1

    sget v0, Lcom/sec/game/gamecast/common/R$id;->button_next:I

    invoke-virtual {p0, v0}, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mNext:Landroid/widget/Button;

    iget-object v0, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mNext:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    iget-object v0, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mAgree:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mNext:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mNext:Landroid/widget/Button;

    const v1, 0x3f59999a    # 0.85f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    :goto_0
    const-string/jumbo v0, "DreamTNCActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNextButton - isChecked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mAgree:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mThemeContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/ThemeUtil;->isThemeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mNext:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/game/gamecast/common/R$color;->common_sub_app_bar_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mNext:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/game/gamecast/common/R$color;->common_sub_app_bar_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_0
    invoke-static {p0}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->isShowButtonBackground(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mNext:Landroid/widget/Button;

    sget v1, Lcom/sec/game/gamecast/common/R$drawable;->next_round_ripple_show_button_background:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mNext:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/sec/game/gamecast/common/R$id;->button_disagree:I

    invoke-virtual {p0, v0}, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mDisagree:Landroid/widget/Button;

    iget-object v0, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mThemeContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/ThemeUtil;->isThemeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mDisagree:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/game/gamecast/common/R$color;->common_sub_app_bar_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    :cond_2
    invoke-static {p0}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->isShowButtonBackground(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mDisagree:Landroid/widget/Button;

    sget v1, Lcom/sec/game/gamecast/common/R$drawable;->next_round_ripple_show_button_background:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_3
    iget-object v0, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mDisagree:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mNext:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->mNext:Landroid/widget/Button;

    const v1, 0x3e8f5c29    # 0.28f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    goto/16 :goto_0
.end method
