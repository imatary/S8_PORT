.class public final enum Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface$Flag;
.super Ljava/lang/Enum;
.source "MultiWindowInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Flag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface$Flag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface$Flag;

.field public static final enum FREE_STYLE:Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface$Flag;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface$Flag;

    const-string/jumbo v1, "FREE_STYLE"

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface$Flag;->FREE_STYLE:Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface$Flag;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface$Flag;

    sget-object v1, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface$Flag;->FREE_STYLE:Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface$Flag;

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface$Flag;->$VALUES:[Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface$Flag;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface$Flag;
    .locals 1

    const-class v0, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface$Flag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface$Flag;

    return-object v0
.end method

.method public static values()[Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface$Flag;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface$Flag;->$VALUES:[Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface$Flag;

    invoke-virtual {v0}, [Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface$Flag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface$Flag;

    return-object v0
.end method
