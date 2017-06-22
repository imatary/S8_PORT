.class Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder$2;
.super Ljava/lang/Thread;
.source "GLSelectionBorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->updateLines()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->access$500(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void
.end method
