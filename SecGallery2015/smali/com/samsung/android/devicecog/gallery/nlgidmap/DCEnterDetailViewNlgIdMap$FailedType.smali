.class public final enum Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;
.super Ljava/lang/Enum;
.source "DCEnterDetailViewNlgIdMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FailedType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;

.field public static final enum CONTENT_TYPE_MATCH_NO:Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;

.field public static final enum SELECT_COUNT_IS_ONE_NO:Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;

.field public static final enum SELECT_ORDER_AND_COUNT_EXIST_NO:Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;

    const-string/jumbo v1, "SELECT_ORDER_AND_COUNT_EXIST_NO"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;->SELECT_ORDER_AND_COUNT_EXIST_NO:Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;

    new-instance v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;

    const-string/jumbo v1, "SELECT_COUNT_IS_ONE_NO"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;->SELECT_COUNT_IS_ONE_NO:Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;

    new-instance v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;

    const-string/jumbo v1, "CONTENT_TYPE_MATCH_NO"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;->CONTENT_TYPE_MATCH_NO:Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;

    sget-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;->SELECT_ORDER_AND_COUNT_EXIST_NO:Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;->SELECT_COUNT_IS_ONE_NO:Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;->CONTENT_TYPE_MATCH_NO:Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;->$VALUES:[Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;
    .locals 1

    const-class v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;
    .locals 1

    sget-object v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;->$VALUES:[Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;

    invoke-virtual {v0}, [Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;

    return-object v0
.end method
