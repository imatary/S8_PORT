.class public Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$DecodeObject;
.super Ljava/lang/Object;
.source "DecodeTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecodeObject"
.end annotation


# instance fields
.field argb:[I

.field bmp:Landroid/graphics/Bitmap;

.field height:I

.field width:I


# direct methods
.method public constructor <init>([IIILandroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$DecodeObject;->argb:[I

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$DecodeObject;->width:I

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$DecodeObject;->height:I

    iput-object p4, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$DecodeObject;->bmp:Landroid/graphics/Bitmap;

    return-void
.end method
