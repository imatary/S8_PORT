.class public Lcom/sec/android/mimage/photoretouching/util/CommonUtil$StorageIconInfo;
.super Ljava/lang/Object;
.source "CommonUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/util/CommonUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StorageIconInfo"
.end annotation


# instance fields
.field public icon:Landroid/graphics/drawable/Drawable;

.field public label:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/util/CommonUtil;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/util/CommonUtil;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/util/CommonUtil$StorageIconInfo;->this$0:Lcom/sec/android/mimage/photoretouching/util/CommonUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/util/CommonUtil$StorageIconInfo;->icon:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/util/CommonUtil$StorageIconInfo;->label:Ljava/lang/CharSequence;

    return-void
.end method
