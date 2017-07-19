.class Lcom/sec/android/app/camera/provider/CameraGestureManager$1;
.super Ljava/lang/Object;
.source "CameraGestureManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/provider/CameraGestureManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/provider/CameraGestureManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/provider/CameraGestureManager;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/provider/CameraGestureManager$1;->this$0:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    iput-object p2, p0, Lcom/sec/android/app/camera/provider/CameraGestureManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraGestureManager$1;->this$0:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/sec/android/app/camera/provider/CameraGestureManager$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/app/camera/provider/CameraGestureManager$1;->this$0:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/provider/CameraGestureManager;->access$002(Lcom/sec/android/app/camera/provider/CameraGestureManager;Landroid/view/GestureDetector;)Landroid/view/GestureDetector;

    return-void
.end method
