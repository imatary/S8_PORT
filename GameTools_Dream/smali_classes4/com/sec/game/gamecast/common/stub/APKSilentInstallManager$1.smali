.class Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager$1;
.super Ljava/lang/Object;
.source "APKSilentInstallManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->installPackage(Landroid/content/Context;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager$1;->this$0:Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;

    iput p2, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager$1;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager$1;->this$0:Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;

    iget v1, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager$1;->val$id:I

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->access$000(Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;I)I

    iget-object v0, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager$1;->this$0:Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;

    iget v1, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager$1;->val$id:I

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->access$100(Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;I)V

    return-void
.end method
