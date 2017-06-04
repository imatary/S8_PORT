.class Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity$1;
.super Ljava/lang/Object;
.source "GameIconDisplayOptionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->createGameIconDisplayOptionDialog(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;

.field final synthetic val$mActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity$1;->this$0:Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;

    iput-object p2, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity$1;->val$mActivity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity$1;->this$0:Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity$1;->this$0:Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;

    iget-boolean v1, v1, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mCurrentSetting:Z

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/model/SettingData;->setGameIconsHidden(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity$1;->this$0:Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;

    # invokes: Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->insertGameIconDisplayOptionStatusLog()V
    invoke-static {v0}, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->access$000(Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity$1;->val$mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
