.class public Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotViewActivity;
.super Landroid/app/Activity;
.source "ScreenshotViewActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenshotViewActivity"


# instance fields
.field mContext:Landroid/content/Context;

.field private mNotificationId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private doFinish()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotViewActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$string;->IDS_COM_POP_UNABLE_TO_FIND_ITEM_ABB:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const-string/jumbo v1, "notification"

    invoke-virtual {p0, v1}, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotViewActivity;->mNotificationId:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotViewActivity;->finish()V

    return-void
.end method


# virtual methods
.method public getPathFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8

    const/4 v2, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotViewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_0

    const-string/jumbo v0, "ScreenshotViewActivity"

    const-string/jumbo v1, "getPathFromUri : cursor == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v2

    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v2, v7

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotViewActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v6, "NotificationId"

    const/4 v7, -0x1

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotViewActivity;->mNotificationId:I

    const-string/jumbo v6, "imageUri"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v6, "ScreenshotViewActivity"

    const-string/jumbo v7, "onCreate : imageUri is null."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotViewActivity;->doFinish()V

    :goto_0
    return-void

    :cond_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotViewActivity;->getPathFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    const-string/jumbo v6, "ScreenshotViewActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onCreate : Item is not exist in media provider : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotViewActivity;->doFinish()V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "ScreenshotViewActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onCreate : Item is not exist : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotViewActivity;->doFinish()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotViewActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotViewActivity;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.VIEW"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "image/png"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v6, 0x10000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotViewActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotViewActivity;->finish()V

    goto :goto_0
.end method
