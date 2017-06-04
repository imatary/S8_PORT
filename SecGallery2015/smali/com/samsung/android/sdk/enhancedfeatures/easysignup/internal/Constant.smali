.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/Constant;
.super Ljava/lang/Object;
.source "Constant.java"


# static fields
.field public static final SMS_PERMISSIONS_SAMSUNG_DEVICES:[Ljava/lang/String;

.field public static final SMS_PHONE_STATE_PERMISSIONS_NON_SAMSUNG_DEVICES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.READ_SMS"

    aput-object v1, v0, v2

    const-string/jumbo v1, "android.permission.SEND_SMS"

    aput-object v1, v0, v3

    const-string/jumbo v1, "android.permission.RECEIVE_SMS"

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/Constant;->SMS_PERMISSIONS_SAMSUNG_DEVICES:[Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.READ_SMS"

    aput-object v1, v0, v2

    const-string/jumbo v1, "android.permission.SEND_SMS"

    aput-object v1, v0, v3

    const-string/jumbo v1, "android.permission.RECEIVE_SMS"

    aput-object v1, v0, v4

    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/Constant;->SMS_PHONE_STATE_PERMISSIONS_NON_SAMSUNG_DEVICES:[Ljava/lang/String;

    return-void
.end method
