.class public Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingOpenSourceLicense;
.super Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment;
.source "SettingOpenSourceLicense.java"


# instance fields
.field private mCurrentOrientation:I

.field private mIsTools:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingOpenSourceLicense;->mCurrentOrientation:I

    return-void
.end method

.method private initialize()V
    .locals 3

    iget-boolean v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingOpenSourceLicense;->mIsTools:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingOpenSourceLicense;->getmActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "announcement/opensource_tools.txt"

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingOpenSourceLicense;->loadAssetTextAsString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingOpenSourceLicense;->mRootView:Landroid/view/View;

    const v2, 0x7f0b004f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingOpenSourceLicense;->getmActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "announcement/opensource.txt"

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingOpenSourceLicense;->loadAssetTextAsString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private loadAssetTextAsString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v2, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v5, 0x1

    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v2, v3

    :goto_2
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error opening asset "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_0
    :goto_3
    const-string/jumbo v7, ""

    :goto_4
    return-object v7

    :cond_1
    const/16 v7, 0xa

    :try_start_4
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v7

    move-object v2, v3

    :goto_5
    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_6
    throw v7

    :cond_3
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v7

    if-eqz v3, :cond_4

    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_4
    :goto_7
    move-object v2, v3

    goto :goto_4

    :catch_1
    move-exception v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error closing asset "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    goto :goto_7

    :catch_2
    move-exception v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error closing asset "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    goto :goto_3

    :catch_3
    move-exception v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error closing asset "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    goto :goto_6

    :catchall_1
    move-exception v7

    goto :goto_5

    :catch_4
    move-exception v1

    goto/16 :goto_2
.end method


# virtual methods
.method bindListener()V
    .locals 0

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingOpenSourceLicense;->initialize()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingOpenSourceLicense;->bindListener()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingOpenSourceLicense;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingOpenSourceLicense;->mCurrentOrientation:I

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingOpenSourceLicense;->initialize()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingOpenSourceLicense;->bindListener()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    if-nez p2, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingOpenSourceLicense;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "isTools"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingOpenSourceLicense;->mIsTools:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SettingPrivacyPolicy:bundle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingOpenSourceLicense;->mIsTools:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingOpenSourceLicense;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingOpenSourceLicense;->mCurrentOrientation:I

    const v1, 0x7f03003a

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingOpenSourceLicense;->mRootView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingOpenSourceLicense;->mRootView:Landroid/view/View;

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingOpenSourceLicense;->getmActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0601d0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method
