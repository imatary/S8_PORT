.class public Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotShareActivity;
.super Landroid/app/Activity;
.source "ScreenshotShareActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenshotShareActivity"


# instance fields
.field private mNotificationId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private doFinish()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotShareActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$string;->IDS_COM_POP_UNABLE_TO_FIND_ITEM_ABB:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const-string/jumbo v1, "notification"

    invoke-virtual {p0, v1}, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotShareActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotShareActivity;->mNotificationId:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotShareActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotShareActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "NotificationId"

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotShareActivity;->mNotificationId:I

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v5, "FilePath"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v5, "ScreenshotShareActivity"

    const-string/jumbo v6, "onCreate : imageFilePath is null."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotShareActivity;->doFinish()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "ScreenshotShareActivity"

    const-string/jumbo v6, "onCreate : Item is not exist."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotShareActivity;->doFinish()V

    goto :goto_0

    :cond_1
    const-string/jumbo v5, "keyguard"

    invoke-virtual {p0, v5}, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotShareActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotShareActivity$1;

    invoke-direct {v5, p0}, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotShareActivity$1;-><init>(Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotShareActivity;)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotShareActivity;->startChooserActivity()V

    goto :goto_0
.end method

.method startChooserActivity()V
    .locals 6

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "image/png"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.extra.STREAM"

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v5, "Uri"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.extra.SUBJECT"

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "Subject"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v3, "share via"

    invoke-static {v2, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotShareActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotShareActivity;->finish()V

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
