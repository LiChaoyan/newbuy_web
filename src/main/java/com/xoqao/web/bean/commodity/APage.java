package com.xoqao.web.bean.commodity;

/**
 * Created by win8.1 on 2017/8/9.
 */
public class APage {
    int p=1;//当前页数,从1开始
    int start=0;//每页开始在数据库中的位置
    int count = 2;//每页记录
    int listsize=0;// 按条件查询得到评论的数量
    int pagesize;
    int bp=0;//beforepage
    int ap=0;//afterpage
    int cid=-1;

    int pai=0;//0为推荐排序，1为时间排序(暂未用到)
    int ping=0;//0全部评价1是好评2是中评，3是差评，4是追评
    double gasslv;
    double masslv;
    double basslv;
    int allassess;//所有评论的数量
    int gass;//好评数量
    int mass;//中评数量
    int bass;//差评数量


    public void setAPage(int p, int listsize, int gass, int mass, int bass) {
        this.p = p;
        this.count = 2;
        this.allassess = listsize;
        this.gass = gass;
        this.mass = mass;
        this.bass = bass;
        if (this.ping == 0) {
            this.listsize = listsize;
            this.allassess=listsize;
        }
        if (this.ping == 1) {
            this.listsize = gass;
        }
        if (this.ping == 2) {
            this.listsize = mass;
        }
        if (this.ping == 3) {
            this.listsize = bass;
        }
        this.gasslv = ((double) gass / (double) (gass + mass + bass) * 100);
        this.masslv = ((double) mass / (double) (gass + mass + bass) * 100);
        this.basslv = ((double) bass / (double) (gass + mass + bass) * 100);

        //判断一共几页
        if (this.listsize % this.count == 0) {
            this.pagesize = this.listsize / count;
        } else {
            this.pagesize = this.listsize / count + 1;
        }
        //判断每一页开始start
        this.start = (p - 1) * this.count;
        //判断每一页的结束
        if (this.p == pagesize) {
            this.count = this.listsize % this.count;
        }
        //判断p的上一页bp
        if (p == 0) {
            this.bp = 0;
        } else {
            this.bp = p - 1;
        }
        //判断p的下一页ap
        if (p == pagesize) {
            this.ap = p;
        } else {
            this.ap = p + 1;
        }
        //判断当前页面的前3页是否存在bplist
    }

    public int getP() {
        return p;
    }

    public void setP(int p) {
        this.p = p;
    }

    public int getStart() {
        return start;
    }

    public void setStart(int start) {
        this.start = start;
    }

    public int getCount() {
        return 2;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public int getListsize() {
        return listsize;
    }

    public void setListsize(int listsize) {
        this.listsize = listsize;
    }

    public int getPagesize() {
        return pagesize;
    }

    public void setPagesize(int pagesize) {
        this.pagesize = pagesize;
    }

    public int getBp() {
        return bp;
    }

    public void setBp(int bp) {
        this.bp = bp;
    }

    public int getAp() {
        return ap;
    }

    public void setAp(int ap) {
        this.ap = ap;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public int getPai() {
        return pai;
    }

    public void setPai(int pai) {
        this.pai = pai;
    }

    public int getPing() {
        return ping;
    }

    public void setPing(int ping) {
        this.ping = ping;
    }

    public double getGasslv() {
        return gasslv;
    }

    public void setGasslv(double gasslv) {
        this.gasslv = gasslv;
    }

    public double getMasslv() {
        return masslv;
    }

    public void setMasslv(double masslv) {
        this.masslv = masslv;
    }

    public double getBasslv() {
        return basslv;
    }

    public void setBasslv(double basslv) {
        this.basslv = basslv;
    }

    public int getAllassess() {
        return allassess;
    }

    public void setAllassess(int allassess) {
        this.allassess = allassess;
    }

    public int getGass() {
        return gass;
    }

    public void setGass(int gass) {
        this.gass = gass;
    }

    public int getMass() {
        return mass;
    }

    public void setMass(int mass) {
        this.mass = mass;
    }

    public int getBass() {
        return bass;
    }

    public void setBass(int bass) {
        this.bass = bass;
    }
}

