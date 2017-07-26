.class public Lcom/sec/game/gamecast/common/utility/FbToolsUtil;
.super Ljava/lang/Object;
.source "FbToolsUtil.java"


# static fields
.field private static sFirebaseAnalytics:Lcom/sec/game/gamecast/common/utility/FbToolsUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/game/gamecast/common/utility/FbToolsUtil;->sFirebaseAnalytics:Lcom/sec/game/gamecast/common/utility/FbToolsUtil;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initFb(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/sec/game/gamecast/common/utility/FbToolsUtil;->sFirebaseAnalytics:Lcom/sec/game/gamecast/common/utility/FbToolsUtil;

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method public static sendEventLogViaFirebase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v2, -0x1

    invoke-static {p0, p1, v0, v2, v3}, Lcom/sec/game/gamecast/common/utility/FbToolsUtil;->sendEventLogViaFirebase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static sendEventLogViaFirebase(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/sec/game/gamecast/common/utility/FbToolsUtil;->sendEventLogViaFirebase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static sendEventLogViaFirebase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/sec/game/gamecast/common/utility/FbToolsUtil;->sendEventLogViaFirebase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static sendEventLogViaFirebase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5

    sget-object v1, Lcom/sec/game/gamecast/common/utility/FbToolsUtil;->sFirebaseAnalytics:Lcom/sec/game/gamecast/common/utility/FbToolsUtil;

    if-eqz v1, :cond_3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p0, :cond_0

    const-string/jumbo v1, "Screen_name"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    const-string/jumbo v1, "Detail"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-wide/16 v2, -0x1

    cmp-long v1, p3, v2

    if-lez v1, :cond_2

    const-string/jumbo v1, "Value"

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string/jumbo v1, "sendEventLogViaFirebase firebaseAnalytics is NULL"

    invoke-static {v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static sendUserPropertyLogViaFirebase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/sec/game/gamecast/common/utility/FbToolsUtil;->sFirebaseAnalytics:Lcom/sec/game/gamecast/common/utility/FbToolsUtil;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "sendUserPropertyLogViaFirebase firebaseAnalytics is NULL"

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;)V

    goto :goto_0
.end method
