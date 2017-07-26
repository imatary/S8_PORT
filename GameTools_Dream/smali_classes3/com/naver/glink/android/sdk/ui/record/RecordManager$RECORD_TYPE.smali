.class public final enum Lcom/naver/glink/android/sdk/ui/record/RecordManager$RECORD_TYPE;
.super Ljava/lang/Enum;
.source "RecordManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/ui/record/RecordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RECORD_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/naver/glink/android/sdk/ui/record/RecordManager$RECORD_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/naver/glink/android/sdk/ui/record/RecordManager$RECORD_TYPE;

.field public static final enum CUSTOM:Lcom/naver/glink/android/sdk/ui/record/RecordManager$RECORD_TYPE;

.field public static final enum WIDGET:Lcom/naver/glink/android/sdk/ui/record/RecordManager$RECORD_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager$RECORD_TYPE;

    const-string/jumbo v1, "WIDGET"

    invoke-direct {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/record/RecordManager$RECORD_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager$RECORD_TYPE;->WIDGET:Lcom/naver/glink/android/sdk/ui/record/RecordManager$RECORD_TYPE;

    new-instance v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager$RECORD_TYPE;

    const-string/jumbo v1, "CUSTOM"

    invoke-direct {v0, v1, v3}, Lcom/naver/glink/android/sdk/ui/record/RecordManager$RECORD_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager$RECORD_TYPE;->CUSTOM:Lcom/naver/glink/android/sdk/ui/record/RecordManager$RECORD_TYPE;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/naver/glink/android/sdk/ui/record/RecordManager$RECORD_TYPE;

    sget-object v1, Lcom/naver/glink/android/sdk/ui/record/RecordManager$RECORD_TYPE;->WIDGET:Lcom/naver/glink/android/sdk/ui/record/RecordManager$RECORD_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/naver/glink/android/sdk/ui/record/RecordManager$RECORD_TYPE;->CUSTOM:Lcom/naver/glink/android/sdk/ui/record/RecordManager$RECORD_TYPE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager$RECORD_TYPE;->$VALUES:[Lcom/naver/glink/android/sdk/ui/record/RecordManager$RECORD_TYPE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/naver/glink/android/sdk/ui/record/RecordManager$RECORD_TYPE;
    .locals 1

    const-class v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager$RECORD_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager$RECORD_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/naver/glink/android/sdk/ui/record/RecordManager$RECORD_TYPE;
    .locals 1

    sget-object v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager$RECORD_TYPE;->$VALUES:[Lcom/naver/glink/android/sdk/ui/record/RecordManager$RECORD_TYPE;

    invoke-virtual {v0}, [Lcom/naver/glink/android/sdk/ui/record/RecordManager$RECORD_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/naver/glink/android/sdk/ui/record/RecordManager$RECORD_TYPE;

    return-object v0
.end method
