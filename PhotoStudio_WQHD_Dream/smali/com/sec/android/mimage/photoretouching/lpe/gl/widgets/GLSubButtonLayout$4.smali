.class Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout$4;
.super Ljava/lang/Object;
.source "GLSubButtonLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->onOrientationChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout$4;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout$4;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout$4;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mState:I
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->setState(IZ)V

    return-void
.end method
