.class final enum Lcom/sec/samsung/gallery/features/Feature$FeatureType;
.super Ljava/lang/Enum;
.source "Feature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/features/Feature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "FeatureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/samsung/gallery/features/Feature$FeatureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/samsung/gallery/features/Feature$FeatureType;

.field public static final enum DO_NOT_USE_PREFERENCE:Lcom/sec/samsung/gallery/features/Feature$FeatureType;

.field public static final enum USE_PREFERENCE:Lcom/sec/samsung/gallery/features/Feature$FeatureType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/features/Feature$FeatureType;

    const-string/jumbo v1, "USE_PREFERENCE"

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/features/Feature$FeatureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/features/Feature$FeatureType;->USE_PREFERENCE:Lcom/sec/samsung/gallery/features/Feature$FeatureType;

    new-instance v0, Lcom/sec/samsung/gallery/features/Feature$FeatureType;

    const-string/jumbo v1, "DO_NOT_USE_PREFERENCE"

    invoke-direct {v0, v1, v3}, Lcom/sec/samsung/gallery/features/Feature$FeatureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/features/Feature$FeatureType;->DO_NOT_USE_PREFERENCE:Lcom/sec/samsung/gallery/features/Feature$FeatureType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/samsung/gallery/features/Feature$FeatureType;

    sget-object v1, Lcom/sec/samsung/gallery/features/Feature$FeatureType;->USE_PREFERENCE:Lcom/sec/samsung/gallery/features/Feature$FeatureType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/samsung/gallery/features/Feature$FeatureType;->DO_NOT_USE_PREFERENCE:Lcom/sec/samsung/gallery/features/Feature$FeatureType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/samsung/gallery/features/Feature$FeatureType;->$VALUES:[Lcom/sec/samsung/gallery/features/Feature$FeatureType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/samsung/gallery/features/Feature$FeatureType;
    .locals 1

    const-class v0, Lcom/sec/samsung/gallery/features/Feature$FeatureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/features/Feature$FeatureType;

    return-object v0
.end method

.method public static values()[Lcom/sec/samsung/gallery/features/Feature$FeatureType;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/Feature$FeatureType;->$VALUES:[Lcom/sec/samsung/gallery/features/Feature$FeatureType;

    invoke-virtual {v0}, [Lcom/sec/samsung/gallery/features/Feature$FeatureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/samsung/gallery/features/Feature$FeatureType;

    return-object v0
.end method
