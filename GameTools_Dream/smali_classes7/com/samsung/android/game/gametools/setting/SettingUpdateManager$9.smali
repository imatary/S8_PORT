.class Lcom/samsung/android/game/gametools/setting/SettingUpdateManager$9;
.super Ljava/lang/Object;
.source "SettingUpdateManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->doUpdate(Lcom/sec/game/gamecast/common/stub/StubData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;

.field final synthetic val$stubData:Lcom/sec/game/gamecast/common/stub/StubData;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;Lcom/sec/game/gamecast/common/stub/StubData;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager$9;->this$0:Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;

    iput-object p2, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager$9;->val$stubData:Lcom/sec/game/gamecast/common/stub/StubData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager$9;->this$0:Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager$9;->val$stubData:Lcom/sec/game/gamecast/common/stub/StubData;

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->downloadAPK(Lcom/sec/game/gamecast/common/stub/StubData;)V

    return-void
.end method
