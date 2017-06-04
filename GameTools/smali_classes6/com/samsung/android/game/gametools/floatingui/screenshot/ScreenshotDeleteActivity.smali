.class public Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity;
.super Landroid/app/Activity;
.source "ScreenshotDeleteActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenshotDeleteActivity"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mDeleteFile:Ljava/io/File;

.field private mImageFilePath:Ljava/lang/String;

.field private mNotificationId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity;->mImageFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity;->mNotificationId:I

    return v0
.end method

.method private doFinish()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$string;->IDS_COM_POP_UNABLE_TO_FIND_ITEM_ABB:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const-string/jumbo v1, "notification"

    invoke-virtual {p0, v1}, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity;->mNotificationId:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity;->finish()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LongLogTag"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "FilePath"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity;->mImageFilePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity;->mImageFilePath:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string/jumbo v2, "ScreenshotDeleteActivity"

    const-string/jumbo v3, "onCreate : mImageFilePath is null."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity;->doFinish()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v2, "NotificationId"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity;->mNotificationId:I

    const-string/jumbo v2, "ScreenshotDeleteActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCreate : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity;->mImageFilePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity;->mDeleteFile:Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity;->mDeleteFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "ScreenshotDeleteActivity"

    const-string/jumbo v3, "onCreate : Item is not exist."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity;->doFinish()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string/jumbo v3, "will be deleted"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string/jumbo v4, "delete"

    const-string/jumbo v5, "string"

    const-string/jumbo v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity$4;

    invoke-direct {v4, p0}, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity$4;-><init>(Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string/jumbo v4, "no"

    const-string/jumbo v5, "string"

    const-string/jumbo v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity$3;

    invoke-direct {v4, p0}, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity$3;-><init>(Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity$2;-><init>(Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity$1;-><init>(Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity;->mAlertDialog:Landroid/app/AlertDialog;

    const-string/jumbo v2, "android.intent.action.DELETE"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v2, "ScreenshotDeleteActivity"

    const-string/jumbo v3, "Fail : Invaild intent action"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity;->finish()V

    goto/16 :goto_0
.end method

.method public onPause(Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity;->finish()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity;->setVisible(Z)V

    return-void
.end method
