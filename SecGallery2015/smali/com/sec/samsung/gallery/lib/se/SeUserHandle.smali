.class public Lcom/sec/samsung/gallery/lib/se/SeUserHandle;
.super Ljava/lang/Object;
.source "SeUserHandle.java"


# static fields
.field public static final ALL:Landroid/os/UserHandle;

.field public static final OWNER:Landroid/os/UserHandle;

.field public static final USER_CURRENT:I = -0x2

.field public static final USER_OWNER:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/os/UserHandle;->SEM_OWNER:Landroid/os/UserHandle;

    sput-object v0, Lcom/sec/samsung/gallery/lib/se/SeUserHandle;->OWNER:Landroid/os/UserHandle;

    sget-object v0, Landroid/os/UserHandle;->SEM_ALL:Landroid/os/UserHandle;

    sput-object v0, Lcom/sec/samsung/gallery/lib/se/SeUserHandle;->ALL:Landroid/os/UserHandle;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static myUserId()I
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v0

    return v0
.end method
