.class public Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;
.super Landroid/app/Activity;
.source "SettingLockKey.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey$RadioAdapter;,
        Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey$ListViewItem;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SettingLockKey"

.field private static mKeyLockItem:[Ljava/lang/String;


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mCancel:Landroid/widget/TextView;

.field private mCurrent:I

.field private mCurrentOrientation:I

.field private mDone:Landroid/widget/TextView;

.field private mImageView:Landroid/widget/ImageView;

.field private mListView:Landroid/widget/ListView;

.field protected mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->mCurrentOrientation:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->mCurrent:I

    return-void
.end method

.method private initialize()V
    .locals 10

    const v9, 0x7f0602cf

    const v8, 0x7f0602ce

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    const-string/jumbo v2, "SettingLockKey"

    const-string/jumbo v3, "initialize"

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0x7f0b00e2

    invoke-virtual {p0, v2}, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->mRootView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->mRootView:Landroid/view/View;

    const v3, 0x7f0b00e3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->mRootView:Landroid/view/View;

    const v3, 0x7f0b0004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey$ListViewItem;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0602f3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey$ListViewItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    new-instance v2, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey$ListViewItem;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey$ListViewItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    new-instance v2, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey$ListViewItem;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey$ListViewItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    sput-object v2, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->mKeyLockItem:[Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->mKeyLockItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0602f3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    sget-object v2, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->mKeyLockItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    sget-object v2, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->mKeyLockItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    new-instance v0, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey$RadioAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f03002b

    sget-object v4, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->mKeyLockItem:[Ljava/lang/String;

    invoke-direct {v0, v2, v3, v4}, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey$RadioAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setOverScrollMode(I)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->setLayoutSum()V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->initializeLayout()V

    return-void
.end method

.method private initializeLayout()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->mActionBar:Landroid/app/ActionBar;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->mActionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->mActionBar:Landroid/app/ActionBar;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->mActionBar:Landroid/app/ActionBar;

    const/high16 v3, 0x7f030000

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setCustomView(I)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/Toolbar;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/game/gamecast/common/utility/ThemeUtil;->isThemeOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, v4, v4}, Landroid/widget/Toolbar;->setContentInsetsAbsolute(II)V

    :cond_1
    const v2, 0x7f0b0001

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->mCancel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->mCancel:Landroid/widget/TextView;

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->setMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->mCancel:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0b0002

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->mDone:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->mDone:Landroid/widget/TextView;

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->setMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->mDone:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/game/gamecast/common/model/SettingData;->getKeyLockSettings(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->mCurrent:I

    iget v2, p0, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->mCurrent:I

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->mImageView:Landroid/widget/ImageView;

    const v3, 0x7f02003e

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->mListView:Landroid/widget/ListView;

    iget v3, p0, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->mCurrent:I

    invoke-virtual {v2, v3, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    return-void

    :cond_4
    iget v2, p0, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->mCurrent:I

    if-ne v2, v5, :cond_5

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->mImageView:Landroid/widget/ImageView;

    const v3, 0x7f02003f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->mCurrent:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->mImageView:Landroid/widget/ImageView;

    const v3, 0x7f020040

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->mDone:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->mCurrent:I

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/model/SettingData;->setKeyLockSettings(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->mCancel:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->finish()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const/16 v2, 0x400

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->mCurrentOrientation:I

    const-string/jumbo v0, "SettingLockKey"

    const-string/jumbo v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    :cond_0
    :goto_0
    const v0, 0x7f030039

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->setContentView(I)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->setLayoutSum()V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->initialize()V

    return-void

    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "SettingLockKey"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f030039

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->setContentView(I)V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->initialize()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const-string/jumbo v0, "SettingLockKey"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onItemClick - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput p3, p0, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->mCurrent:I

    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f02003e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f02003f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f020040

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setLayoutSum()V
    .locals 0

    return-void
.end method
