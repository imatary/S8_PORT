.class public Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;
.super Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment;
.source "SettingHelpFragment.java"


# instance fields
.field private SAName:Ljava/lang/String;

.field private isSALogin:Z

.field private isTools:Z

.field private mContactUsDivider:Landroid/widget/LinearLayout;

.field private mContactUsLayout:Landroid/widget/LinearLayout;

.field private mFAQDivider:Landroid/widget/LinearLayout;

.field private mFAQLayout:Landroid/widget/LinearLayout;

.field private mMyQuestionDivider:Landroid/widget/LinearLayout;

.field private mMyQuestionLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->SAName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->isSALogin:Z

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->isTools:Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->mMyQuestionLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;Ljava/lang/Runnable;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->postDelayed(Ljava/lang/Runnable;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;Ljava/lang/Runnable;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->postDelayed(Ljava/lang/Runnable;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;Ljava/lang/Runnable;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->postDelayed(Ljava/lang/Runnable;I)V

    return-void
.end method


# virtual methods
.method StartMuse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-static {v7}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->getinstance(Landroid/content/Context;)Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;

    move-result-object v0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p1

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->insertFeatureLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {v7, p2}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->makeMuseUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.VIEW"

    invoke-direct {v6, v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v6}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method bindListener()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->mMyQuestionLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment$1;-><init>(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->mFAQLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment$2;-><init>(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->mContactUsLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment$3;-><init>(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method goContactUs()V
    .locals 3

    const-string/jumbo v1, "GL43"

    const-string/jumbo v0, "com.samsung.android.game.gamehome"

    iget-boolean v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->isTools:Z

    if-eqz v2, :cond_0

    const-string/jumbo v1, "GT43"

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string/jumbo v2, "/ticket/createQuestionTicket.do"

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->StartMuse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method goFAQ()V
    .locals 3

    const-string/jumbo v1, "GL42"

    const-string/jumbo v0, "com.samsung.android.game.gamehome"

    iget-boolean v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->isTools:Z

    if-eqz v2, :cond_0

    const-string/jumbo v1, "GT42"

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string/jumbo v2, "/faq/searchFaq.do"

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->StartMuse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method goMyQuestion()V
    .locals 3

    const-string/jumbo v1, "GL41"

    const-string/jumbo v0, "com.samsung.android.game.gamehome"

    iget-boolean v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->isTools:Z

    if-eqz v2, :cond_0

    const-string/jumbo v1, "GT41"

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string/jumbo v2, "/ticket/searchTicketList.do"

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->StartMuse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    const v7, 0x7f060291

    const/4 v6, 0x0

    const v5, 0x7f0b0057

    const v4, 0x7f0b0040

    const/16 v3, 0x8

    if-nez p2, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const v1, 0x7f03000a

    invoke-virtual {p1, v1, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "isTools"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->isTools:Z

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f0b0035

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->mMyQuestionLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->mMyQuestionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0602a0

    invoke-virtual {p0, v2}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->mMyQuestionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f0b0037

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->mFAQLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->mFAQLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0, v7}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->mFAQLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->mFAQLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const-string/jumbo v2, "FAQ"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->mFAQLayout:Landroid/widget/LinearLayout;

    const-string/jumbo v2, "F A Q"

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f0b0039

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->mContactUsLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->mContactUsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f060290

    invoke-virtual {p0, v2}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->mContactUsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f0b0036

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->mMyQuestionDivider:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f0b0038

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->mFAQDivider:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f0b003a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->mContactUsDivider:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->isMembersInstalled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->mContactUsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->bindListener()V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->mRootView:Landroid/view/View;

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->mFAQLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v7}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->mContactUsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method public onResume()V
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x8

    invoke-super {p0}, Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f06029a

    invoke-virtual {p0, v1}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    const-string/jumbo v0, "902"

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/DeviceUtil;->isSamsungAccountLogin(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->isSALogin:Z

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->isSALogin:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/DeviceUtil;->getSamsungAccountName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->SAName:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->mMyQuestionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->mMyQuestionDivider:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->mFAQLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->mFAQDivider:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->mContactUsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->mContactUsDivider:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_3
    return-void

    :cond_0
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->SAName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->mMyQuestionDivider:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->mFAQDivider:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->mContactUsDivider:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3
.end method
