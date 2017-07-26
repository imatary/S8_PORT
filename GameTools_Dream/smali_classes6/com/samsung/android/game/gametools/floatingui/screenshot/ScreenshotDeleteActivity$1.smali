.class Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity$1;
.super Ljava/lang/Object;
.source "ScreenshotDeleteActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/screenshot/ScreenshotDeleteActivity;->finish()V

    return-void
.end method
