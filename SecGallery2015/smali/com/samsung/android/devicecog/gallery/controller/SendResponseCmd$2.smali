.class Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$2;
.super Ljava/lang/Object;
.source "SendResponseCmd.java"

# interfaces
.implements Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$OnGLIdleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->addGLIdleListener(Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;

.field final synthetic val$responseResult:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;


# direct methods
.method constructor <init>(Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$2;->this$0:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;

    iput-object p2, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$2;->val$responseResult:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGLIdle()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$2;->this$0:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$2;->val$responseResult:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v0, v1}, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->access$600(Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    return-void
.end method
