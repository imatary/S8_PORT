.class public Lcom/sec/game/gamecast/common/utility/ConstantsForInterface$Command;
.super Ljava/lang/Object;
.source "ConstantsForInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/game/gamecast/common/utility/ConstantsForInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Command"
.end annotation


# static fields
.field public static final FORCE_UPDATE_PACKAGES:Ljava/lang/String; = "force_update_packages"

.field public static final GET_GLOBAL_DATA:Ljava/lang/String; = "get_global_data"

.field public static final GET_PACKAGE_DATA:Ljava/lang/String; = "get_package_data"

.field public static final GET_SYSTEM_FPS:Ljava/lang/String; = "get_system_fps"

.field public static final GET_TUNABLE_NON_GAME_LIST:Ljava/lang/String; = "get_tunable_non_game_list"

.field public static final SEND_REPORT:Ljava/lang/String; = "send_report"

.field public static final SET_GLOBAL_DATA:Ljava/lang/String; = "set_global_data"

.field public static final SET_NON_GAME_CATEGORY:Ljava/lang/String; = "set_non_game_category"

.field public static final SET_PACKAGE_DATA:Ljava/lang/String; = "set_package_data"

.field public static final UPDATE_GAME_OPTIMIZER:Ljava/lang/String; = "update_game_optimizer"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
