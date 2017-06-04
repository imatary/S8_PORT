.class Lcom/sec/android/secphoto/ExifInformation;
.super Ljava/lang/Object;
.source "AutoEnhance.java"


# instance fields
.field final mAutoEnhanceExifManager:Lcom/sec/samsung/gallery/lib/libinterface/AutoEnhanceExifInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/samsung/gallery/lib/factory/AutoEnhanceExifFactory;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/lib/factory/AutoEnhanceExifFactory;-><init>()V

    invoke-interface {v0, p1}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/lib/libinterface/AutoEnhanceExifInterface;

    iput-object v1, p0, Lcom/sec/android/secphoto/ExifInformation;->mAutoEnhanceExifManager:Lcom/sec/samsung/gallery/lib/libinterface/AutoEnhanceExifInterface;

    iget-object v1, p0, Lcom/sec/android/secphoto/ExifInformation;->mAutoEnhanceExifManager:Lcom/sec/samsung/gallery/lib/libinterface/AutoEnhanceExifInterface;

    invoke-interface {v1, p2}, Lcom/sec/samsung/gallery/lib/libinterface/AutoEnhanceExifInterface;->getExifInterface(Ljava/lang/String;)V

    return-void
.end method
