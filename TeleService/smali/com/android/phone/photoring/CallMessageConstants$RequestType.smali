.class public final enum Lcom/android/phone/photoring/CallMessageConstants$RequestType;
.super Ljava/lang/Enum;
.source "CallMessageConstants.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/photoring/CallMessageConstants$RequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/photoring/CallMessageConstants$RequestType;

.field public static final enum ALERTINFO:Lcom/android/phone/photoring/CallMessageConstants$RequestType;

.field public static final enum DOWNLOAD_CONTENT:Lcom/android/phone/photoring/CallMessageConstants$RequestType;

.field public static final enum GET_CALLMESSAGE_CALL:Lcom/android/phone/photoring/CallMessageConstants$RequestType;

.field public static final enum GET_CALLMESSAGE_CHG_CALL:Lcom/android/phone/photoring/CallMessageConstants$RequestType;

.field public static final enum GET_CONTENT_SPEC_CALL:Lcom/android/phone/photoring/CallMessageConstants$RequestType;

.field public static final enum NONE:Lcom/android/phone/photoring/CallMessageConstants$RequestType;

.field public static final enum SET_REALTIME_SERVICEINFO_CALL:Lcom/android/phone/photoring/CallMessageConstants$RequestType;

.field public static final enum UPLOAD_CONTENT_CALL:Lcom/android/phone/photoring/CallMessageConstants$RequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/phone/photoring/CallMessageConstants$RequestType;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/photoring/CallMessageConstants$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->NONE:Lcom/android/phone/photoring/CallMessageConstants$RequestType;

    new-instance v0, Lcom/android/phone/photoring/CallMessageConstants$RequestType;

    const-string/jumbo v1, "GET_CONTENT_SPEC_CALL"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/photoring/CallMessageConstants$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->GET_CONTENT_SPEC_CALL:Lcom/android/phone/photoring/CallMessageConstants$RequestType;

    new-instance v0, Lcom/android/phone/photoring/CallMessageConstants$RequestType;

    const-string/jumbo v1, "UPLOAD_CONTENT_CALL"

    invoke-direct {v0, v1, v5}, Lcom/android/phone/photoring/CallMessageConstants$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->UPLOAD_CONTENT_CALL:Lcom/android/phone/photoring/CallMessageConstants$RequestType;

    new-instance v0, Lcom/android/phone/photoring/CallMessageConstants$RequestType;

    const-string/jumbo v1, "SET_REALTIME_SERVICEINFO_CALL"

    invoke-direct {v0, v1, v6}, Lcom/android/phone/photoring/CallMessageConstants$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->SET_REALTIME_SERVICEINFO_CALL:Lcom/android/phone/photoring/CallMessageConstants$RequestType;

    new-instance v0, Lcom/android/phone/photoring/CallMessageConstants$RequestType;

    const-string/jumbo v1, "GET_CALLMESSAGE_CALL"

    invoke-direct {v0, v1, v7}, Lcom/android/phone/photoring/CallMessageConstants$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->GET_CALLMESSAGE_CALL:Lcom/android/phone/photoring/CallMessageConstants$RequestType;

    new-instance v0, Lcom/android/phone/photoring/CallMessageConstants$RequestType;

    const-string/jumbo v1, "GET_CALLMESSAGE_CHG_CALL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/phone/photoring/CallMessageConstants$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->GET_CALLMESSAGE_CHG_CALL:Lcom/android/phone/photoring/CallMessageConstants$RequestType;

    new-instance v0, Lcom/android/phone/photoring/CallMessageConstants$RequestType;

    const-string/jumbo v1, "DOWNLOAD_CONTENT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/phone/photoring/CallMessageConstants$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->DOWNLOAD_CONTENT:Lcom/android/phone/photoring/CallMessageConstants$RequestType;

    new-instance v0, Lcom/android/phone/photoring/CallMessageConstants$RequestType;

    const-string/jumbo v1, "ALERTINFO"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/phone/photoring/CallMessageConstants$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->ALERTINFO:Lcom/android/phone/photoring/CallMessageConstants$RequestType;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/phone/photoring/CallMessageConstants$RequestType;

    sget-object v1, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->NONE:Lcom/android/phone/photoring/CallMessageConstants$RequestType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->GET_CONTENT_SPEC_CALL:Lcom/android/phone/photoring/CallMessageConstants$RequestType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->UPLOAD_CONTENT_CALL:Lcom/android/phone/photoring/CallMessageConstants$RequestType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->SET_REALTIME_SERVICEINFO_CALL:Lcom/android/phone/photoring/CallMessageConstants$RequestType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->GET_CALLMESSAGE_CALL:Lcom/android/phone/photoring/CallMessageConstants$RequestType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->GET_CALLMESSAGE_CHG_CALL:Lcom/android/phone/photoring/CallMessageConstants$RequestType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->DOWNLOAD_CONTENT:Lcom/android/phone/photoring/CallMessageConstants$RequestType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->ALERTINFO:Lcom/android/phone/photoring/CallMessageConstants$RequestType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->$VALUES:[Lcom/android/phone/photoring/CallMessageConstants$RequestType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/photoring/CallMessageConstants$RequestType;
    .locals 1

    const-class v0, Lcom/android/phone/photoring/CallMessageConstants$RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/photoring/CallMessageConstants$RequestType;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/photoring/CallMessageConstants$RequestType;
    .locals 1

    sget-object v0, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->$VALUES:[Lcom/android/phone/photoring/CallMessageConstants$RequestType;

    return-object v0
.end method
