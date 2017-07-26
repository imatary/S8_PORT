.class Lcom/samsung/android/game/gametools/setting/activity/TestActivity$2;
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


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/setting/activity/TestActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity$2;->this$0:Lcom/samsung/android/game/gametools/setting/activity/TestActivity;

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

    sget-object v1, Lcom/sec/game/gamecast/common/model/SettingData;->RESOLUTION_PRESET_LIST:[Ljava/lang/String;

    aget-object v0, v1, p3

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity$2;->this$0:Lcom/samsung/android/game/gametools/setting/activity/TestActivity;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sec/game/gamecast/common/model/SettingData;->setResolution(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity$2;->this$0:Lcom/samsung/android/game/gametools/setting/activity/TestActivity;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->refreshText()V

    return-void
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
