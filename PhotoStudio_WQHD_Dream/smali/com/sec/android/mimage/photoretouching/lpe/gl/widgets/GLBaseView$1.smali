.class Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$1;
.super Ljava/lang/Object;
.source "GLBaseView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->load()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->onLoad()Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mIsLoading:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mIsLoaded:Z

    return-void
.end method
