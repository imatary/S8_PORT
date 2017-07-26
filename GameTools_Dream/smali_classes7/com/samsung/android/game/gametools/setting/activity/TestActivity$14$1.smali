.class Lcom/samsung/android/game/gametools/setting/activity/TestActivity$14$1;
.super Ljava/lang/Object;
.source "TestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/setting/activity/TestActivity$14;->onTaskFinished(IILcom/gdg/recordinglib/ICallback$GCMetadata;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/game/gametools/setting/activity/TestActivity$14;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/setting/activity/TestActivity$14;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity$14$1;->this$1:Lcom/samsung/android/game/gametools/setting/activity/TestActivity$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity$14$1;->this$1:Lcom/samsung/android/game/gametools/setting/activity/TestActivity$14;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity$14;->this$0:Lcom/samsung/android/game/gametools/setting/activity/TestActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->mIsRecording:Z

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity$14$1;->this$1:Lcom/samsung/android/game/gametools/setting/activity/TestActivity$14;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity$14;->this$0:Lcom/samsung/android/game/gametools/setting/activity/TestActivity;

    const v1, 0x7f0c000b

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity$14$1;->this$1:Lcom/samsung/android/game/gametools/setting/activity/TestActivity$14;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity$14;->this$0:Lcom/samsung/android/game/gametools/setting/activity/TestActivity;

    invoke-virtual {v0, v2}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->changeSpinners(Z)V

    return-void
.end method
