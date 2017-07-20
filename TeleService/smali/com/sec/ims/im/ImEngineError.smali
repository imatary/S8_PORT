.class public final enum Lcom/sec/ims/im/ImEngineError;
.super Ljava/lang/Enum;
.source "ImEngineError.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/im/ImEngineError$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/ims/im/ImEngineError;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/ims/im/ImEngineError;

.field public static final enum ALTERNATE_SERVICE:Lcom/sec/ims/im/ImEngineError;

.field public static final enum ANONYMITY_NOT_ALLOWED:Lcom/sec/ims/im/ImEngineError;

.field public static final enum BAD_GATEWAY:Lcom/sec/ims/im/ImEngineError;

.field public static final enum BUSY_EVERYWHERE:Lcom/sec/ims/im/ImEngineError;

.field public static final enum CONFERENCE_ADHOC_START_FAILED:Lcom/sec/ims/im/ImEngineError;

.field public static final enum CONFERENCE_CREATE_FAILED:Lcom/sec/ims/im/ImEngineError;

.field public static final enum CONFERENCE_DATA_INVALID:Lcom/sec/ims/im/ImEngineError;

.field public static final enum CONFERENCE_DOESNT_EXIST:Lcom/sec/ims/im/ImEngineError;

.field public static final enum CONFERENCE_JOIN_FAILED:Lcom/sec/ims/im/ImEngineError;

.field public static final enum CONFERENCE_PARTY_REACHED_MAX:Lcom/sec/ims/im/ImEngineError;

.field public static final enum CONNECTION_RELEASED:Lcom/sec/ims/im/ImEngineError;

.field public static final enum CONTENT_REACHED_DOWNSIZE:Lcom/sec/ims/im/ImEngineError;

.field public static final enum CONTINUED_ON_ANOTHER_DEVICE:Lcom/sec/ims/im/ImEngineError;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/ims/im/ImEngineError;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum ENGINE_ERROR:Lcom/sec/ims/im/ImEngineError;

.field public static final enum FORBIDDEN_MAX_RECEPIENT_REACHED:Lcom/sec/ims/im/ImEngineError;

.field public static final enum FORBIDDEN_NO_RETRY_FALLBACK:Lcom/sec/ims/im/ImEngineError;

.field public static final enum FORBIDDEN_RESTART_GC_CLOSED:Lcom/sec/ims/im/ImEngineError;

.field public static final enum GONE:Lcom/sec/ims/im/ImEngineError;

.field public static final enum INVALID_REQUEST:Lcom/sec/ims/im/ImEngineError;

.field public static final enum MAX_SIZE_EXCEEDED:Lcom/sec/ims/im/ImEngineError;

.field public static final enum MESSAGE_TIMED_OUT:Lcom/sec/ims/im/ImEngineError;

.field public static final enum MESSAGE_TOO_LARGE:Lcom/sec/ims/im/ImEngineError;

.field public static final enum METHOD_NOT_ALLOWED:Lcom/sec/ims/im/ImEngineError;

.field public static final enum NETWORK_ERROR:Lcom/sec/ims/im/ImEngineError;

.field public static final enum NORMAL_RELEASE:Lcom/sec/ims/im/ImEngineError;

.field public static final enum NOTEXIST_ANYWHERE:Lcom/sec/ims/im/ImEngineError;

.field public static final enum NOT_ACCEPTABLE:Lcom/sec/ims/im/ImEngineError;

.field public static final enum NOT_AUTHORIZED:Lcom/sec/ims/im/ImEngineError;

.field public static final enum NOT_IMPLEMENTED:Lcom/sec/ims/im/ImEngineError;

.field public static final enum NO_RESPONSE:Lcom/sec/ims/im/ImEngineError;

.field public static final enum REMOTE_PARTY_CLOSED:Lcom/sec/ims/im/ImEngineError;

.field public static final enum REMOTE_PARTY_REJECTED:Lcom/sec/ims/im/ImEngineError;

.field public static final enum REMOTE_TEMPORARILY_UNAVAILABLE:Lcom/sec/ims/im/ImEngineError;

.field public static final enum REMOTE_USER_INVALID:Lcom/sec/ims/im/ImEngineError;

.field public static final enum REQEUST_ENTITY_TOO_LARGE:Lcom/sec/ims/im/ImEngineError;

.field public static final enum REQUEST_URI_TOO_LARGE:Lcom/sec/ims/im/ImEngineError;

.field public static final enum SERVER_NOT_ACCEPTABLE:Lcom/sec/ims/im/ImEngineError;

.field public static final enum SERVER_TIMEOUT:Lcom/sec/ims/im/ImEngineError;

.field public static final enum SESSION_DOESNT_EXIST:Lcom/sec/ims/im/ImEngineError;

.field public static final enum SESSION_TIMED_OUT:Lcom/sec/ims/im/ImEngineError;

.field public static final enum SIP_VERSION_NOT_SUPPORTED:Lcom/sec/ims/im/ImEngineError;

.field public static final enum SUCCESS:Lcom/sec/ims/im/ImEngineError;

.field public static final enum UNSUPPORTED_MEDIA_TYPE:Lcom/sec/ims/im/ImEngineError;

.field public static final enum UNSUPPORTED_URI_SCHEME:Lcom/sec/ims/im/ImEngineError;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/sec/ims/im/ImEngineError;

    const-string/jumbo v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/sec/ims/im/ImEngineError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/im/ImEngineError;->SUCCESS:Lcom/sec/ims/im/ImEngineError;

    new-instance v0, Lcom/sec/ims/im/ImEngineError;

    const-string/jumbo v1, "ENGINE_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/sec/ims/im/ImEngineError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/im/ImEngineError;->ENGINE_ERROR:Lcom/sec/ims/im/ImEngineError;

    new-instance v0, Lcom/sec/ims/im/ImEngineError;

    const-string/jumbo v1, "NORMAL_RELEASE"

    invoke-direct {v0, v1, v5}, Lcom/sec/ims/im/ImEngineError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/im/ImEngineError;->NORMAL_RELEASE:Lcom/sec/ims/im/ImEngineError;

    new-instance v0, Lcom/sec/ims/im/ImEngineError;

    const-string/jumbo v1, "NETWORK_ERROR"

    invoke-direct {v0, v1, v6}, Lcom/sec/ims/im/ImEngineError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/im/ImEngineError;->NETWORK_ERROR:Lcom/sec/ims/im/ImEngineError;

    new-instance v0, Lcom/sec/ims/im/ImEngineError;

    const-string/jumbo v1, "INVALID_REQUEST"

    invoke-direct {v0, v1, v7}, Lcom/sec/ims/im/ImEngineError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/im/ImEngineError;->INVALID_REQUEST:Lcom/sec/ims/im/ImEngineError;

    new-instance v0, Lcom/sec/ims/im/ImEngineError;

    const-string/jumbo v1, "REMOTE_USER_INVALID"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/im/ImEngineError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/im/ImEngineError;->REMOTE_USER_INVALID:Lcom/sec/ims/im/ImEngineError;

    new-instance v0, Lcom/sec/ims/im/ImEngineError;

    const-string/jumbo v1, "ANONYMITY_NOT_ALLOWED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/im/ImEngineError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/im/ImEngineError;->ANONYMITY_NOT_ALLOWED:Lcom/sec/ims/im/ImEngineError;

    new-instance v0, Lcom/sec/ims/im/ImEngineError;

    const-string/jumbo v1, "NOT_AUTHORIZED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/im/ImEngineError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/im/ImEngineError;->NOT_AUTHORIZED:Lcom/sec/ims/im/ImEngineError;

    new-instance v0, Lcom/sec/ims/im/ImEngineError;

    const-string/jumbo v1, "SESSION_TIMED_OUT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/im/ImEngineError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/im/ImEngineError;->SESSION_TIMED_OUT:Lcom/sec/ims/im/ImEngineError;

    new-instance v0, Lcom/sec/ims/im/ImEngineError;

    const-string/jumbo v1, "REMOTE_PARTY_REJECTED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/im/ImEngineError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/im/ImEngineError;->REMOTE_PARTY_REJECTED:Lcom/sec/ims/im/ImEngineError;

    new-instance v0, Lcom/sec/ims/im/ImEngineError;

    const-string/jumbo v1, "REMOTE_PARTY_CLOSED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/im/ImEngineError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/im/ImEngineError;->REMOTE_PARTY_CLOSED:Lcom/sec/ims/im/ImEngineError;

    new-instance v0, Lcom/sec/ims/im/ImEngineError;

    const-string/jumbo v1, "MESSAGE_TIMED_OUT"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/im/ImEngineError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/im/ImEngineError;->MESSAGE_TIMED_OUT:Lcom/sec/ims/im/ImEngineError;

    new-instance v0, Lcom/sec/ims/im/ImEngineError;

    const-string/jumbo v1, "MAX_SIZE_EXCEEDED"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/im/ImEngineError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/im/ImEngineError;->MAX_SIZE_EXCEEDED:Lcom/sec/ims/im/ImEngineError;

    new-instance v0, Lcom/sec/ims/im/ImEngineError;

    const-string/jumbo v1, "FORBIDDEN_NO_RETRY_FALLBACK"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/im/ImEngineError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/im/ImEngineError;->FORBIDDEN_NO_RETRY_FALLBACK:Lcom/sec/ims/im/ImEngineError;

    new-instance v0, Lcom/sec/ims/im/ImEngineError;

    const-string/jumbo v1, "FORBIDDEN_RESTART_GC_CLOSED"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/im/ImEngineError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/im/ImEngineError;->FORBIDDEN_RESTART_GC_CLOSED:Lcom/sec/ims/im/ImEngineError;

    new-instance v0, Lcom/sec/ims/im/ImEngineError;

    const-string/jumbo v1, "FORBIDDEN_MAX_RECEPIENT_REACHED"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/im/ImEngineError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/im/ImEngineError;->FORBIDDEN_MAX_RECEPIENT_REACHED:Lcom/sec/ims/im/ImEngineError;

    new-instance v0, Lcom/sec/ims/im/ImEngineError;

    const-string/jumbo v1, "CONTENT_REACHED_DOWNSIZE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/im/ImEngineError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/im/ImEngineError;->CONTENT_REACHED_DOWNSIZE:Lcom/sec/ims/im/ImEngineError;

    new-instance v0, Lcom/sec/ims/im/ImEngineError;

    const-string/jumbo v1, "CONNECTION_RELEASED"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/im/ImEngineError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/im/ImEngineError;->CONNECTION_RELEASED:Lcom/sec/ims/im/ImEngineError;

    new-instance v0, Lcom/sec/ims/im/ImEngineError;

    const-string/jumbo v1, "CONFERENCE_DOESNT_EXIST"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/im/ImEngineError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/im/ImEngineError;->CONFERENCE_DOESNT_EXIST:Lcom/sec/ims/im/ImEngineError;

    new-instance v0, Lcom/sec/ims/im/ImEngineError;

    const-string/jumbo v1, "CONFERENCE_DATA_INVALID"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/im/ImEngineError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/im/ImEngineError;->CONFERENCE_DATA_INVALID:Lcom/sec/ims/im/ImEngineError;

    new-instance v0, Lcom/sec/ims/im/ImEngineError;

    const-string/jumbo v1, "CONFERENCE_PARTY_REACHED_MAX"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/im/ImEngineError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/im/ImEngineError;->CONFERENCE_PARTY_REACHED_MAX:Lcom/sec/ims/im/ImEngineError;

    new-instance v0, Lcom/sec/ims/im/ImEngineError;

    const-string/jumbo v1, "CONFERENCE_CREATE_FAILED"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/im/ImEngineError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/im/ImEngineError;->CONFERENCE_CREATE_FAILED:Lcom/sec/ims/im/ImEngineError;

    new-instance v0, Lcom/sec/ims/im/ImEngineError;

    const-string/jumbo v1, "CONFERENCE_ADHOC_START_FAILED"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/im/ImEngineError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/im/ImEngineError;->CONFERENCE_ADHOC_START_FAILED:Lcom/sec/ims/im/ImEngineError;

    new-instance v0, Lcom/sec/ims/im/ImEngineError;

    const-string/jumbo v1, "CONFERENCE_JOIN_FAILED"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/im/ImEngineError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/im/ImEngineError;->CONFERENCE_JOIN_FAILED:Lcom/sec/ims/im/ImEngineError;

    new-instance v0, Lcom/sec/ims/im/ImEngineError;

    const-string/jumbo v1, "CONTINUED_ON_ANOTHER_DEVICE"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/im/ImEngineError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/im/ImEngineError;->CONTINUED_ON_ANOTHER_DEVICE:Lcom/sec/ims/im/ImEngineError;

    new-instance v0, Lcom/sec/ims/im/ImEngineError;

    const-string/jumbo v1, "REMOTE_TEMPORARILY_UNAVAILABLE"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/im/ImEngineError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/im/ImEngineError;->REMOTE_TEMPORARILY_UNAVAILABLE:Lcom/sec/ims/im/ImEngineError;

    new-instance v0, Lcom/sec/ims/im/ImEngineError;

    const-string/jumbo v1, "ALTERNATE_SERVICE"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/im/ImEngineError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/im/ImEngineError;->ALTERNATE_SERVICE:Lcom/sec/ims/im/ImEngineError;

    new-instance v0, Lcom/sec/ims/im/ImEngineError;

    const-string/jumbo v1, "METHOD_NOT_ALLOWED"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/im/ImEngineError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/im/ImEngineError;->METHOD_NOT_ALLOWED:Lcom/sec/ims/im/ImEngineError;

    new-instance v0, Lcom/sec/ims/im/ImEngineError;

    const-string/jumbo v1, "NOT_ACCEPTABLE"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/im/ImEngineError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/im/ImEngineError;->NOT_ACCEPTABLE:Lcom/sec/ims/im/ImEngineError;

    new-instance v0, Lcom/sec/ims/im/ImEngineError;

    const-string/jumbo v1, "GONE"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/im/ImEngineError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/im/ImEngineError;->GONE:Lcom/sec/ims/im/ImEngineError;

    new-instance v0, Lcom/sec/ims/im/ImEngineError;

    const-string/jumbo v1, "REQEUST_ENTITY_TOO_LARGE"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/im/ImEngineError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/im/ImEngineError;->REQEUST_ENTITY_TOO_LARGE:Lcom/sec/ims/im/ImEngineError;

    new-instance v0, Lcom/sec/ims/im/ImEngineError;

    const-string/jumbo v1, "REQUEST_URI_TOO_LARGE"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/im/ImEngineError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/im/ImEngineError;->REQUEST_URI_TOO_LARGE:Lcom/sec/ims/im/ImEngineError;

    new-instance v0, Lcom/sec/ims/im/ImEngineError;

    const-string/jumbo v1, "UNSUPPORTED_MEDIA_TYPE"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/im/ImEngineError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/im/ImEngineError;->UNSUPPORTED_MEDIA_TYPE:Lcom/sec/ims/im/ImEngineError;

    new-instance v0, Lcom/sec/ims/im/ImEngineError;

    const-string/jumbo v1, "UNSUPPORTED_URI_SCHEME"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/im/ImEngineError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/im/ImEngineError;->UNSUPPORTED_URI_SCHEME:Lcom/sec/ims/im/ImEngineError;

    new-instance v0, Lcom/sec/ims/im/ImEngineError;

    const-string/jumbo v1, "BUSY_EVERYWHERE"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/im/ImEngineError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/im/ImEngineError;->BUSY_EVERYWHERE:Lcom/sec/ims/im/ImEngineError;

    new-instance v0, Lcom/sec/ims/im/ImEngineError;

    const-string/jumbo v1, "NOTEXIST_ANYWHERE"

    const/16 v2, 0x23

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/im/ImEngineError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/im/ImEngineError;->NOTEXIST_ANYWHERE:Lcom/sec/ims/im/ImEngineError;

    new-instance v0, Lcom/sec/ims/im/ImEngineError;

    const-string/jumbo v1, "SERVER_NOT_ACCEPTABLE"

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/im/ImEngineError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/im/ImEngineError;->SERVER_NOT_ACCEPTABLE:Lcom/sec/ims/im/ImEngineError;

    new-instance v0, Lcom/sec/ims/im/ImEngineError;

    const-string/jumbo v1, "NOT_IMPLEMENTED"

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/im/ImEngineError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/im/ImEngineError;->NOT_IMPLEMENTED:Lcom/sec/ims/im/ImEngineError;

    new-instance v0, Lcom/sec/ims/im/ImEngineError;

    const-string/jumbo v1, "BAD_GATEWAY"

    const/16 v2, 0x26

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/im/ImEngineError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/im/ImEngineError;->BAD_GATEWAY:Lcom/sec/ims/im/ImEngineError;

    new-instance v0, Lcom/sec/ims/im/ImEngineError;

    const-string/jumbo v1, "SERVER_TIMEOUT"

    const/16 v2, 0x27

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/im/ImEngineError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/im/ImEngineError;->SERVER_TIMEOUT:Lcom/sec/ims/im/ImEngineError;

    new-instance v0, Lcom/sec/ims/im/ImEngineError;

    const-string/jumbo v1, "SIP_VERSION_NOT_SUPPORTED"

    const/16 v2, 0x28

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/im/ImEngineError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/im/ImEngineError;->SIP_VERSION_NOT_SUPPORTED:Lcom/sec/ims/im/ImEngineError;

    new-instance v0, Lcom/sec/ims/im/ImEngineError;

    const-string/jumbo v1, "MESSAGE_TOO_LARGE"

    const/16 v2, 0x29

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/im/ImEngineError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/im/ImEngineError;->MESSAGE_TOO_LARGE:Lcom/sec/ims/im/ImEngineError;

    new-instance v0, Lcom/sec/ims/im/ImEngineError;

    const-string/jumbo v1, "SESSION_DOESNT_EXIST"

    const/16 v2, 0x2a

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/im/ImEngineError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/im/ImEngineError;->SESSION_DOESNT_EXIST:Lcom/sec/ims/im/ImEngineError;

    new-instance v0, Lcom/sec/ims/im/ImEngineError;

    const-string/jumbo v1, "NO_RESPONSE"

    const/16 v2, 0x2b

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/im/ImEngineError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/im/ImEngineError;->NO_RESPONSE:Lcom/sec/ims/im/ImEngineError;

    const/16 v0, 0x2c

    new-array v0, v0, [Lcom/sec/ims/im/ImEngineError;

    sget-object v1, Lcom/sec/ims/im/ImEngineError;->SUCCESS:Lcom/sec/ims/im/ImEngineError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/ims/im/ImEngineError;->ENGINE_ERROR:Lcom/sec/ims/im/ImEngineError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/ims/im/ImEngineError;->NORMAL_RELEASE:Lcom/sec/ims/im/ImEngineError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/ims/im/ImEngineError;->NETWORK_ERROR:Lcom/sec/ims/im/ImEngineError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/ims/im/ImEngineError;->INVALID_REQUEST:Lcom/sec/ims/im/ImEngineError;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sec/ims/im/ImEngineError;->REMOTE_USER_INVALID:Lcom/sec/ims/im/ImEngineError;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/im/ImEngineError;->ANONYMITY_NOT_ALLOWED:Lcom/sec/ims/im/ImEngineError;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/im/ImEngineError;->NOT_AUTHORIZED:Lcom/sec/ims/im/ImEngineError;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/im/ImEngineError;->SESSION_TIMED_OUT:Lcom/sec/ims/im/ImEngineError;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/im/ImEngineError;->REMOTE_PARTY_REJECTED:Lcom/sec/ims/im/ImEngineError;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/im/ImEngineError;->REMOTE_PARTY_CLOSED:Lcom/sec/ims/im/ImEngineError;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/im/ImEngineError;->MESSAGE_TIMED_OUT:Lcom/sec/ims/im/ImEngineError;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/im/ImEngineError;->MAX_SIZE_EXCEEDED:Lcom/sec/ims/im/ImEngineError;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/im/ImEngineError;->FORBIDDEN_NO_RETRY_FALLBACK:Lcom/sec/ims/im/ImEngineError;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/im/ImEngineError;->FORBIDDEN_RESTART_GC_CLOSED:Lcom/sec/ims/im/ImEngineError;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/im/ImEngineError;->FORBIDDEN_MAX_RECEPIENT_REACHED:Lcom/sec/ims/im/ImEngineError;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/im/ImEngineError;->CONTENT_REACHED_DOWNSIZE:Lcom/sec/ims/im/ImEngineError;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/im/ImEngineError;->CONNECTION_RELEASED:Lcom/sec/ims/im/ImEngineError;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/im/ImEngineError;->CONFERENCE_DOESNT_EXIST:Lcom/sec/ims/im/ImEngineError;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/im/ImEngineError;->CONFERENCE_DATA_INVALID:Lcom/sec/ims/im/ImEngineError;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/im/ImEngineError;->CONFERENCE_PARTY_REACHED_MAX:Lcom/sec/ims/im/ImEngineError;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/im/ImEngineError;->CONFERENCE_CREATE_FAILED:Lcom/sec/ims/im/ImEngineError;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/im/ImEngineError;->CONFERENCE_ADHOC_START_FAILED:Lcom/sec/ims/im/ImEngineError;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/im/ImEngineError;->CONFERENCE_JOIN_FAILED:Lcom/sec/ims/im/ImEngineError;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/im/ImEngineError;->CONTINUED_ON_ANOTHER_DEVICE:Lcom/sec/ims/im/ImEngineError;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/im/ImEngineError;->REMOTE_TEMPORARILY_UNAVAILABLE:Lcom/sec/ims/im/ImEngineError;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/im/ImEngineError;->ALTERNATE_SERVICE:Lcom/sec/ims/im/ImEngineError;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/im/ImEngineError;->METHOD_NOT_ALLOWED:Lcom/sec/ims/im/ImEngineError;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/im/ImEngineError;->NOT_ACCEPTABLE:Lcom/sec/ims/im/ImEngineError;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/im/ImEngineError;->GONE:Lcom/sec/ims/im/ImEngineError;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/im/ImEngineError;->REQEUST_ENTITY_TOO_LARGE:Lcom/sec/ims/im/ImEngineError;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/im/ImEngineError;->REQUEST_URI_TOO_LARGE:Lcom/sec/ims/im/ImEngineError;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/im/ImEngineError;->UNSUPPORTED_MEDIA_TYPE:Lcom/sec/ims/im/ImEngineError;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/im/ImEngineError;->UNSUPPORTED_URI_SCHEME:Lcom/sec/ims/im/ImEngineError;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/im/ImEngineError;->BUSY_EVERYWHERE:Lcom/sec/ims/im/ImEngineError;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/im/ImEngineError;->NOTEXIST_ANYWHERE:Lcom/sec/ims/im/ImEngineError;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/im/ImEngineError;->SERVER_NOT_ACCEPTABLE:Lcom/sec/ims/im/ImEngineError;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/im/ImEngineError;->NOT_IMPLEMENTED:Lcom/sec/ims/im/ImEngineError;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/im/ImEngineError;->BAD_GATEWAY:Lcom/sec/ims/im/ImEngineError;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/im/ImEngineError;->SERVER_TIMEOUT:Lcom/sec/ims/im/ImEngineError;

    const/16 v2, 0x27

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/im/ImEngineError;->SIP_VERSION_NOT_SUPPORTED:Lcom/sec/ims/im/ImEngineError;

    const/16 v2, 0x28

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/im/ImEngineError;->MESSAGE_TOO_LARGE:Lcom/sec/ims/im/ImEngineError;

    const/16 v2, 0x29

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/im/ImEngineError;->SESSION_DOESNT_EXIST:Lcom/sec/ims/im/ImEngineError;

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/im/ImEngineError;->NO_RESPONSE:Lcom/sec/ims/im/ImEngineError;

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/ims/im/ImEngineError;->$VALUES:[Lcom/sec/ims/im/ImEngineError;

    new-instance v0, Lcom/sec/ims/im/ImEngineError$1;

    invoke-direct {v0}, Lcom/sec/ims/im/ImEngineError$1;-><init>()V

    sput-object v0, Lcom/sec/ims/im/ImEngineError;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/ims/im/ImEngineError;
    .locals 1

    const-class v0, Lcom/sec/ims/im/ImEngineError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/im/ImEngineError;

    return-object v0
.end method

.method public static values()[Lcom/sec/ims/im/ImEngineError;
    .locals 1

    sget-object v0, Lcom/sec/ims/im/ImEngineError;->$VALUES:[Lcom/sec/ims/im/ImEngineError;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/ims/im/ImEngineError;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
