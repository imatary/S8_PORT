.class Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$1;
.super Ljava/lang/Object;
.source "GameToolsScreenshot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->doScreenShotEffect(Landroid/graphics/Bitmap;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;

    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->access$000(Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;

    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->access$100(Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;

    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->access$200(Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
