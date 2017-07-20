.class public Lcom/android/phone/vvm/omtp/OmtpConstants;
.super Ljava/lang/Object;
.source "OmtpConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/vvm/omtp/OmtpConstants$1;
    }
.end annotation


# static fields
.field public static final CONTENT_TYPE_VALUES:[Ljava/lang/String;

.field public static final PROVISIONING_STATUS_VALUES:[Ljava/lang/String;

.field public static final RETURN_CODE_VALUES:[Ljava/lang/String;

.field public static final SYNC_TRIGGER_EVENT_VALUES:[Ljava/lang/String;

.field public static final possibleValuesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "NM"

    aput-object v1, v0, v2

    const-string/jumbo v1, "MBU"

    aput-object v1, v0, v3

    const-string/jumbo v1, "GU"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/phone/vvm/omtp/OmtpConstants;->SYNC_TRIGGER_EVENT_VALUES:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "v"

    aput-object v1, v0, v2

    const-string/jumbo v1, "o"

    aput-object v1, v0, v3

    const-string/jumbo v1, "f"

    aput-object v1, v0, v4

    const-string/jumbo v1, "i"

    aput-object v1, v0, v5

    const-string/jumbo v1, "e"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/phone/vvm/omtp/OmtpConstants;->CONTENT_TYPE_VALUES:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "N"

    aput-object v1, v0, v2

    const-string/jumbo v1, "R"

    aput-object v1, v0, v3

    const-string/jumbo v1, "P"

    aput-object v1, v0, v4

    const-string/jumbo v1, "U"

    aput-object v1, v0, v5

    const-string/jumbo v1, "B"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/phone/vvm/omtp/OmtpConstants;->PROVISIONING_STATUS_VALUES:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "0"

    aput-object v1, v0, v2

    const-string/jumbo v1, "1"

    aput-object v1, v0, v3

    const-string/jumbo v1, "2"

    aput-object v1, v0, v4

    const-string/jumbo v1, "3"

    aput-object v1, v0, v5

    const-string/jumbo v1, "4"

    aput-object v1, v0, v6

    const-string/jumbo v1, "5"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "6"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "7"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/vvm/omtp/OmtpConstants;->RETURN_CODE_VALUES:[Ljava/lang/String;

    new-instance v0, Lcom/android/phone/vvm/omtp/OmtpConstants$1;

    invoke-direct {v0}, Lcom/android/phone/vvm/omtp/OmtpConstants$1;-><init>()V

    sput-object v0, Lcom/android/phone/vvm/omtp/OmtpConstants;->possibleValuesMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
