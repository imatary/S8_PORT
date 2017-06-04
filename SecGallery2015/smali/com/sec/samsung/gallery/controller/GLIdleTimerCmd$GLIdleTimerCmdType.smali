.class public final enum Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;
.super Ljava/lang/Enum;
.source "GLIdleTimerCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GLIdleTimerCmdType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;

.field public static final enum ADD_GL_IDLE_LISTENER:Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;

.field public static final enum REMOVE_GL_IDLE_LISTENER:Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;

.field public static final enum RESET_TIMER_WITH_DELAY:Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;

.field public static final enum RUN_IDLE_LISTENER:Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;

.field public static final enum SET_EXPIRE_TIME:Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;

    const-string/jumbo v1, "RESET_TIMER_WITH_DELAY"

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;->RESET_TIMER_WITH_DELAY:Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;

    new-instance v0, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;

    const-string/jumbo v1, "SET_EXPIRE_TIME"

    invoke-direct {v0, v1, v3}, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;->SET_EXPIRE_TIME:Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;

    new-instance v0, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;

    const-string/jumbo v1, "RUN_IDLE_LISTENER"

    invoke-direct {v0, v1, v4}, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;->RUN_IDLE_LISTENER:Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;

    new-instance v0, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;

    const-string/jumbo v1, "ADD_GL_IDLE_LISTENER"

    invoke-direct {v0, v1, v5}, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;->ADD_GL_IDLE_LISTENER:Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;

    new-instance v0, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;

    const-string/jumbo v1, "REMOVE_GL_IDLE_LISTENER"

    invoke-direct {v0, v1, v6}, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;->REMOVE_GL_IDLE_LISTENER:Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;

    sget-object v1, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;->RESET_TIMER_WITH_DELAY:Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;->SET_EXPIRE_TIME:Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;->RUN_IDLE_LISTENER:Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;->ADD_GL_IDLE_LISTENER:Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;->REMOVE_GL_IDLE_LISTENER:Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;->$VALUES:[Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;
    .locals 1

    const-class v0, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;

    return-object v0
.end method

.method public static values()[Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;->$VALUES:[Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;

    invoke-virtual {v0}, [Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;

    return-object v0
.end method
