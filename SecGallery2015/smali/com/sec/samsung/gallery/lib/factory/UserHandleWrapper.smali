.class public Lcom/sec/samsung/gallery/lib/factory/UserHandleWrapper;
.super Ljava/lang/Object;
.source "UserHandleWrapper.java"


# static fields
.field public static final ALL:Landroid/os/UserHandle;

.field public static final OWNER:Landroid/os/UserHandle;

.field public static final USER_CURRENT:I

.field public static final USER_OWNER:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/lib/se/SeUserHandle;->OWNER:Landroid/os/UserHandle;

    sput-object v0, Lcom/sec/samsung/gallery/lib/factory/UserHandleWrapper;->OWNER:Landroid/os/UserHandle;

    sget-object v0, Lcom/sec/samsung/gallery/lib/se/SeUserHandle;->ALL:Landroid/os/UserHandle;

    sput-object v0, Lcom/sec/samsung/gallery/lib/factory/UserHandleWrapper;->ALL:Landroid/os/UserHandle;

    const/4 v0, 0x0

    sput v0, Lcom/sec/samsung/gallery/lib/factory/UserHandleWrapper;->USER_OWNER:I

    const/4 v0, -0x2

    sput v0, Lcom/sec/samsung/gallery/lib/factory/UserHandleWrapper;->USER_CURRENT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static myUserId()I
    .locals 1

    invoke-static {}, Lcom/sec/samsung/gallery/lib/se/SeUserHandle;->myUserId()I

    move-result v0

    return v0
.end method
