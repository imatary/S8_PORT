.class Lcom/samsung/android/game/gametools/setting/activity/TestActivity$3;
.super Ljava/lang/Object;
.source "TestActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/setting/activity/TestActivity;

.field final synthetic val$bitrate_adapter:Landroid/widget/ArrayAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/setting/activity/TestActivity;Landroid/widget/ArrayAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity$3;->this$0:Lcom/samsung/android/game/gametools/setting/activity/TestActivity;

    iput-object p2, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity$3;->val$bitrate_adapter:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const-string/jumbo v1, "Selected"

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity$3;->val$bitrate_adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity$3;->this$0:Lcom/samsung/android/game/gametools/setting/activity/TestActivity;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/model/SettingData;->setBitrate(Landroid/content/Context;I)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity$3;->this$0:Lcom/samsung/android/game/gametools/setting/activity/TestActivity;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->refreshText()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity$3;->this$0:Lcom/samsung/android/game/gametools/setting/activity/TestActivity;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity$3;->val$bitrate_adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/sec/game/gamecast/common/model/SettingData;->setBitrate(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method
