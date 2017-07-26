.class Lcom/samsung/android/game/gametools/floatingui/screenshot/CameraShutterSound$1;
.super Ljava/lang/Object;
.source "CameraShutterSound.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/screenshot/CameraShutterSound;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/floatingui/screenshot/CameraShutterSound;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/screenshot/CameraShutterSound;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/CameraShutterSound$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/screenshot/CameraShutterSound;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/CameraShutterSound$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/screenshot/CameraShutterSound;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/screenshot/CameraShutterSound;->access$000(Lcom/samsung/android/game/gametools/floatingui/screenshot/CameraShutterSound;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onLoadComplete"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/CameraShutterSound$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/screenshot/CameraShutterSound;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/screenshot/CameraShutterSound;->access$102(Lcom/samsung/android/game/gametools/floatingui/screenshot/CameraShutterSound;Z)Z

    return-void
.end method
