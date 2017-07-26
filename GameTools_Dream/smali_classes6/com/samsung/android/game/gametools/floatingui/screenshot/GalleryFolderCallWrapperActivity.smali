.class public Lcom/samsung/android/game/gametools/floatingui/screenshot/GalleryFolderCallWrapperActivity;
.super Landroid/app/Activity;
.source "GalleryFolderCallWrapperActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GalleryFolderCallWrapperActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private doFinish()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/screenshot/GalleryFolderCallWrapperActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$string;->IDS_COM_POP_UNABLE_TO_FIND_ITEM_ABB:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/screenshot/GalleryFolderCallWrapperActivity;->finish()V

    return-void
.end method

.method private getGalleryFolderIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 6

    invoke-static {p1}, Lcom/sec/game/gamecast/common/utility/GameToolsFileInfoHelper;->getGameRecordingSavedDirectoryAbsPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/local/all/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "targetDir : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "path : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.sec.android.gallery3d"

    const-string/jumbo v5, "com.sec.android.gallery3d.app.GalleryOpaqueActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "com.android.gallery.action.SHORTCUT_VIEW"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v3, 0x14008000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v3, "appname"

    const-string/jumbo v4, "gametools"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LongLogTag"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/samsung/android/game/gametools/floatingui/screenshot/GalleryFolderCallWrapperActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/screenshot/GalleryFolderCallWrapperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v6, "gamename"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string/jumbo v6, "GalleryFolderCallWrapperActivity"

    const-string/jumbo v7, "onCreate : gamename is null."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/screenshot/GalleryFolderCallWrapperActivity;->doFinish()V

    :goto_0
    return-void

    :cond_0
    invoke-static {v2}, Lcom/sec/game/gamecast/common/utility/GameToolsFileInfoHelper;->getGameScreenShotSavedDirectoryAbsPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "GalleryFolderCallWrapperActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onCreate : Item is not exist : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/screenshot/GalleryFolderCallWrapperActivity;->doFinish()V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/screenshot/GalleryFolderCallWrapperActivity;->doFinish()V

    goto :goto_0

    :cond_2
    array-length v6, v0

    if-nez v6, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/screenshot/GalleryFolderCallWrapperActivity;->doFinish()V

    goto :goto_0

    :cond_3
    const-string/jumbo v6, "4032"

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-static {v6, v7, v8, v9}, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->sendEventToSA(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-direct {p0, v2}, Lcom/samsung/android/game/gametools/floatingui/screenshot/GalleryFolderCallWrapperActivity;->getGalleryFolderIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/game/gametools/floatingui/screenshot/GalleryFolderCallWrapperActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/screenshot/GalleryFolderCallWrapperActivity;->finish()V

    goto :goto_0
.end method
