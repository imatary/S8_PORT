.class public final enum Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;
.super Ljava/lang/Enum;
.source "CpuBoostCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/CpuBoostCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CpuBoostCmdType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;

.field public static final enum BOOST_CPU:Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;

.field public static final enum BOOST_CPU_CANCEL:Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;

.field public static final enum BOOST_RELEASE:Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;

.field public static final enum INITIALIZE:Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;

.field public static final enum MULTI_SELECT_BOOST_CPU:Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;

.field public static final enum MULTI_SELECT_INITIALIZE:Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;

    const-string/jumbo v1, "INITIALIZE"

    invoke-direct {v0, v1, v3}, Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;->INITIALIZE:Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;

    new-instance v0, Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;

    const-string/jumbo v1, "BOOST_CPU"

    invoke-direct {v0, v1, v4}, Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;->BOOST_CPU:Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;

    new-instance v0, Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;

    const-string/jumbo v1, "BOOST_CPU_CANCEL"

    invoke-direct {v0, v1, v5}, Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;->BOOST_CPU_CANCEL:Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;

    new-instance v0, Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;

    const-string/jumbo v1, "BOOST_RELEASE"

    invoke-direct {v0, v1, v6}, Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;->BOOST_RELEASE:Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;

    new-instance v0, Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;

    const-string/jumbo v1, "MULTI_SELECT_INITIALIZE"

    invoke-direct {v0, v1, v7}, Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;->MULTI_SELECT_INITIALIZE:Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;

    new-instance v0, Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;

    const-string/jumbo v1, "MULTI_SELECT_BOOST_CPU"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;->MULTI_SELECT_BOOST_CPU:Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;

    sget-object v1, Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;->INITIALIZE:Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;->BOOST_CPU:Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;->BOOST_CPU_CANCEL:Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;->BOOST_RELEASE:Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;->MULTI_SELECT_INITIALIZE:Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;->MULTI_SELECT_BOOST_CPU:Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;->$VALUES:[Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;
    .locals 1

    const-class v0, Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;

    return-object v0
.end method

.method public static values()[Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;->$VALUES:[Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;

    invoke-virtual {v0}, [Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;

    return-object v0
.end method
