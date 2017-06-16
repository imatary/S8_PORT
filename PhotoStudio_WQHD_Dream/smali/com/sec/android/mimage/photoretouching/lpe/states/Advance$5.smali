.class Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$5;
.super Ljava/lang/Object;
.source "Advance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->onSurfaceChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$5;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$5;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->initViewParams()V
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$1800(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$5;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurveView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$1600(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$5;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurveView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$1600(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$5;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mInfo:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$5;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mListOfCurveObjects:[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$1900(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->onSurfaceChanged(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;)V

    :cond_0
    return-void
.end method
