.class public final Ldalvik/bytecode/OpcodeInfo;
.super Ljava/lang/Object;
.source "OpcodeInfo.java"


# static fields
.field public static final MAXIMUM_PACKED_VALUE:I

.field public static final MAXIMUM_VALUE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0xffff

    sput v0, Ldalvik/bytecode/OpcodeInfo;->MAXIMUM_VALUE:I

    const/16 v0, 0xff

    sput v0, Ldalvik/bytecode/OpcodeInfo;->MAXIMUM_PACKED_VALUE:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isInvoke(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
