.class public final enum Lcom/sec/samsung/gallery/controller/SecretModeReceiverCmd$CmdType;
.super Ljava/lang/Enum;
.source "SecretModeReceiverCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/SecretModeReceiverCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CmdType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/samsung/gallery/controller/SecretModeReceiverCmd$CmdType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/samsung/gallery/controller/SecretModeReceiverCmd$CmdType;

.field public static final enum REGISTER_RECEIVER:Lcom/sec/samsung/gallery/controller/SecretModeReceiverCmd$CmdType;

.field public static final enum UNREGISTER_RECEIVER:Lcom/sec/samsung/gallery/controller/SecretModeReceiverCmd$CmdType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/controller/SecretModeReceiverCmd$CmdType;

    const-string/jumbo v1, "REGISTER_RECEIVER"

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/controller/SecretModeReceiverCmd$CmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/SecretModeReceiverCmd$CmdType;->REGISTER_RECEIVER:Lcom/sec/samsung/gallery/controller/SecretModeReceiverCmd$CmdType;

    new-instance v0, Lcom/sec/samsung/gallery/controller/SecretModeReceiverCmd$CmdType;

    const-string/jumbo v1, "UNREGISTER_RECEIVER"

    invoke-direct {v0, v1, v3}, Lcom/sec/samsung/gallery/controller/SecretModeReceiverCmd$CmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/SecretModeReceiverCmd$CmdType;->UNREGISTER_RECEIVER:Lcom/sec/samsung/gallery/controller/SecretModeReceiverCmd$CmdType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/samsung/gallery/controller/SecretModeReceiverCmd$CmdType;

    sget-object v1, Lcom/sec/samsung/gallery/controller/SecretModeReceiverCmd$CmdType;->REGISTER_RECEIVER:Lcom/sec/samsung/gallery/controller/SecretModeReceiverCmd$CmdType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/samsung/gallery/controller/SecretModeReceiverCmd$CmdType;->UNREGISTER_RECEIVER:Lcom/sec/samsung/gallery/controller/SecretModeReceiverCmd$CmdType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/samsung/gallery/controller/SecretModeReceiverCmd$CmdType;->$VALUES:[Lcom/sec/samsung/gallery/controller/SecretModeReceiverCmd$CmdType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/samsung/gallery/controller/SecretModeReceiverCmd$CmdType;
    .locals 1

    const-class v0, Lcom/sec/samsung/gallery/controller/SecretModeReceiverCmd$CmdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/controller/SecretModeReceiverCmd$CmdType;

    return-object v0
.end method

.method public static values()[Lcom/sec/samsung/gallery/controller/SecretModeReceiverCmd$CmdType;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/controller/SecretModeReceiverCmd$CmdType;->$VALUES:[Lcom/sec/samsung/gallery/controller/SecretModeReceiverCmd$CmdType;

    invoke-virtual {v0}, [Lcom/sec/samsung/gallery/controller/SecretModeReceiverCmd$CmdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/samsung/gallery/controller/SecretModeReceiverCmd$CmdType;

    return-object v0
.end method