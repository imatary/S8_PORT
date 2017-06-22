.class Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext$2;
.super Ljava/lang/Object;
.source "GLMainContext.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;)Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-result-object v1

    if-nez v1, :cond_1

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, " layer manager is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;)Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
