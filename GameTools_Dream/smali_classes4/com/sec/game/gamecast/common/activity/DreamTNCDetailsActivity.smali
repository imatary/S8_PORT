.class public Lcom/sec/game/gamecast/common/activity/DreamTNCDetailsActivity;
.super Landroid/app/Activity;
.source "DreamTNCDetailsActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DreamTNCDetailsActivity"


# instance fields
.field private isTOS:Z

.field private mActionBar:Landroid/app/ActionBar;

.field private mDetails:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCDetailsActivity;->isTOS:Z

    return-void
.end method

.method private initialize()V
    .locals 3

    sget v2, Lcom/sec/game/gamecast/common/R$id;->tv_content:I

    invoke-virtual {p0, v2}, Lcom/sec/game/gamecast/common/activity/DreamTNCDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCDetailsActivity;->mDetails:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCDetailsActivity;->isTOS:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/activity/DreamTNCDetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/game/gamecast/common/utility/TncUtil;->getTosContent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCDetailsActivity;->mDetails:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCDetailsActivity;->mDetails:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-direct {p0}, Lcom/sec/game/gamecast/common/activity/DreamTNCDetailsActivity;->setActionBar()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/activity/DreamTNCDetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/game/gamecast/common/utility/TncUtil;->getPrivacyContent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCDetailsActivity;->mDetails:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCDetailsActivity;->mDetails:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setActionBar()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/activity/DreamTNCDetailsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCDetailsActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v0, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCDetailsActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCDetailsActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-boolean v0, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCDetailsActivity;->isTOS:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCDetailsActivity;->mActionBar:Landroid/app/ActionBar;

    sget v1, Lcom/sec/game/gamecast/common/R$string;->DREAM_GH_HEADER_TERMS_AND_CONDITIONS:I

    invoke-virtual {p0, v1}, Lcom/sec/game/gamecast/common/activity/DreamTNCDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCDetailsActivity;->mActionBar:Landroid/app/ActionBar;

    sget v1, Lcom/sec/game/gamecast/common/R$string;->MIDS_GH_HEADER_PRIVACY_POLICY:I

    invoke-virtual {p0, v1}, Lcom/sec/game/gamecast/common/activity/DreamTNCDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/activity/DreamTNCDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "isTOS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCDetailsActivity;->isTOS:Z

    sget v0, Lcom/sec/game/gamecast/common/R$layout;->layout_dream_tnc_details:I

    invoke-virtual {p0, v0}, Lcom/sec/game/gamecast/common/activity/DreamTNCDetailsActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/sec/game/gamecast/common/activity/DreamTNCDetailsActivity;->initialize()V

    return-void
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
    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/activity/DreamTNCDetailsActivity;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-boolean v0, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCDetailsActivity;->isTOS:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/sec/game/gamecast/common/R$string;->DREAM_GH_HEADER_TERMS_AND_CONDITIONS:I

    invoke-virtual {p0, v0}, Lcom/sec/game/gamecast/common/activity/DreamTNCDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/game/gamecast/common/activity/DreamTNCDetailsActivity;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/sec/game/gamecast/common/R$string;->MIDS_GH_HEADER_PRIVACY_POLICY:I

    invoke-virtual {p0, v0}, Lcom/sec/game/gamecast/common/activity/DreamTNCDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/game/gamecast/common/activity/DreamTNCDetailsActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
