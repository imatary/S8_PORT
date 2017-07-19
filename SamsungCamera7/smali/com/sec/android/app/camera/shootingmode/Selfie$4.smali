.class Lcom/sec/android/app/camera/shootingmode/Selfie$4;
.super Ljava/lang/Object;
.source "Selfie.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/Selfie;->onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/Selfie;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/Selfie;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/Selfie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 2

    const-string v0, "1017"

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/Selfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->access$100(Lcom/sec/android/app/camera/shootingmode/Selfie;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v0

    const/16 v1, 0x2331

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CommandInterface;->onLaunchMenu(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/Selfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->access$1100(Lcom/sec/android/app/camera/shootingmode/Selfie;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/16 v1, 0x1d4e

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->onPageSelected(I)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
