.class Lcom/sec/android/mimage/photoretouching/PhotoRetouching$12$1;
.super Ljava/lang/Object;
.source "PhotoRetouching.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/PhotoRetouching$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/mimage/photoretouching/PhotoRetouching$12;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching$12;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$12$1;->this$1:Lcom/sec/android/mimage/photoretouching/PhotoRetouching$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$12$1;->this$1:Lcom/sec/android/mimage/photoretouching/PhotoRetouching$12;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$12;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    # getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mGLContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$600(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    return-void
.end method
