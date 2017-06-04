.class public Lcom/sec/samsung/gallery/lib/factory/DrmStoreWrapper$ConstraintsColumns;
.super Ljava/lang/Object;
.source "DrmStoreWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/lib/factory/DrmStoreWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConstraintsColumns"
.end annotation


# static fields
.field public static final LICENSE_ORIGINAL_INTERVAL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "license_original_interval"

    sput-object v0, Lcom/sec/samsung/gallery/lib/factory/DrmStoreWrapper$ConstraintsColumns;->LICENSE_ORIGINAL_INTERVAL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
