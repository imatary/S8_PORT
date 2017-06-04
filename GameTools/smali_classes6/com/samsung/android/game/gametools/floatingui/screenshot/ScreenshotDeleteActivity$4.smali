.class Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity$4;
.super Ljava/lang/Object;
.source "ScreenshotDeleteActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity$4;->this$0:Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity$4;->this$0:Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity;->mImageFilePath:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity;->access$000(Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity$4;->this$0:Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity;

    const-string/jumbo v3, "notification"

    invoke-virtual {v2, v3}, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity$4;->this$0:Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity;->mNotificationId:I
    invoke-static {v2}, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity;->access$100(Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
