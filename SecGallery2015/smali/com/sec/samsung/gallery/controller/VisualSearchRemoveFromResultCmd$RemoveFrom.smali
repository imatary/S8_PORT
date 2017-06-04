.class final enum Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFrom;
.super Ljava/lang/Enum;
.source "VisualSearchRemoveFromResultCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RemoveFrom"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFrom;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFrom;

.field public static final enum OTHERS:Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFrom;

.field public static final enum PEOPLE:Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFrom;

.field public static final enum USER:Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFrom;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFrom;

    const-string/jumbo v1, "PEOPLE"

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFrom;->PEOPLE:Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFrom;

    new-instance v0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFrom;

    const-string/jumbo v1, "USER"

    invoke-direct {v0, v1, v3}, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFrom;->USER:Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFrom;

    new-instance v0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFrom;

    const-string/jumbo v1, "OTHERS"

    invoke-direct {v0, v1, v4}, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFrom;->OTHERS:Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFrom;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFrom;

    sget-object v1, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFrom;->PEOPLE:Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFrom;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFrom;->USER:Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFrom;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFrom;->OTHERS:Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFrom;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFrom;->$VALUES:[Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFrom;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFrom;
    .locals 1

    const-class v0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFrom;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFrom;

    return-object v0
.end method

.method public static values()[Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFrom;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFrom;->$VALUES:[Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFrom;

    invoke-virtual {v0}, [Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFrom;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFrom;

    return-object v0
.end method
