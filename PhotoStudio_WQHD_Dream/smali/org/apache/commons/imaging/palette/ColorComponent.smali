.class final enum Lorg/apache/commons/imaging/palette/ColorComponent;
.super Ljava/lang/Enum;
.source "ColorComponent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/commons/imaging/palette/ColorComponent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/imaging/palette/ColorComponent;

.field public static final enum ALPHA:Lorg/apache/commons/imaging/palette/ColorComponent;

.field public static final enum BLUE:Lorg/apache/commons/imaging/palette/ColorComponent;

.field public static final enum GREEN:Lorg/apache/commons/imaging/palette/ColorComponent;

.field public static final enum RED:Lorg/apache/commons/imaging/palette/ColorComponent;


# instance fields
.field private final shift:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lorg/apache/commons/imaging/palette/ColorComponent;

    const-string v1, "ALPHA"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/commons/imaging/palette/ColorComponent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/imaging/palette/ColorComponent;->ALPHA:Lorg/apache/commons/imaging/palette/ColorComponent;

    new-instance v0, Lorg/apache/commons/imaging/palette/ColorComponent;

    const-string v1, "RED"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/commons/imaging/palette/ColorComponent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/imaging/palette/ColorComponent;->RED:Lorg/apache/commons/imaging/palette/ColorComponent;

    new-instance v0, Lorg/apache/commons/imaging/palette/ColorComponent;

    const-string v1, "GREEN"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/commons/imaging/palette/ColorComponent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/imaging/palette/ColorComponent;->GREEN:Lorg/apache/commons/imaging/palette/ColorComponent;

    new-instance v0, Lorg/apache/commons/imaging/palette/ColorComponent;

    const-string v1, "BLUE"

    invoke-direct {v0, v1, v6, v3}, Lorg/apache/commons/imaging/palette/ColorComponent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/imaging/palette/ColorComponent;->BLUE:Lorg/apache/commons/imaging/palette/ColorComponent;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/apache/commons/imaging/palette/ColorComponent;

    sget-object v1, Lorg/apache/commons/imaging/palette/ColorComponent;->ALPHA:Lorg/apache/commons/imaging/palette/ColorComponent;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/commons/imaging/palette/ColorComponent;->RED:Lorg/apache/commons/imaging/palette/ColorComponent;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/commons/imaging/palette/ColorComponent;->GREEN:Lorg/apache/commons/imaging/palette/ColorComponent;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/commons/imaging/palette/ColorComponent;->BLUE:Lorg/apache/commons/imaging/palette/ColorComponent;

    aput-object v1, v0, v6

    sput-object v0, Lorg/apache/commons/imaging/palette/ColorComponent;->$VALUES:[Lorg/apache/commons/imaging/palette/ColorComponent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/commons/imaging/palette/ColorComponent;->shift:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/imaging/palette/ColorComponent;
    .locals 1

    const-class v0, Lorg/apache/commons/imaging/palette/ColorComponent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/palette/ColorComponent;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/imaging/palette/ColorComponent;
    .locals 1

    sget-object v0, Lorg/apache/commons/imaging/palette/ColorComponent;->$VALUES:[Lorg/apache/commons/imaging/palette/ColorComponent;

    invoke-virtual {v0}, [Lorg/apache/commons/imaging/palette/ColorComponent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/imaging/palette/ColorComponent;

    return-object v0
.end method


# virtual methods
.method public argbComponent(I)I
    .locals 1

    iget v0, p0, Lorg/apache/commons/imaging/palette/ColorComponent;->shift:I

    shr-int v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method
