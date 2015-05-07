package cz.rexcontrols.epl.editor.gui;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

import javax.swing.SortOrder;
import javax.swing.table.TableModel;
import javax.swing.table.TableRowSorter;

/**
 * 
 * @author honza801
 *
 */
class EplTableRowSorter extends TableRowSorter<TableModel> {
	private boolean asc = true;
	private int lastcol = -1;

	private Comparator<Object> c = new Comparator<Object>() {

		@SuppressWarnings("unchecked")
		@Override
		public int compare(Object o1, Object o2) {
			if ((((Comparable<String>)o1).compareTo("") == 0) && (((Comparable)o2).compareTo("") == 0)) {
				return 0;					
			}

			try {
				return new Integer(Integer.parseInt((String)o1)).compareTo(Integer.parseInt((String)o2));
			} catch (NumberFormatException e) {

				if (((Comparable<String>)o1).compareTo("") == 0) {
					return -1;
				}
				if (((Comparable<String>)o2).compareTo("") == 0) {
					return 1;
				}
				return ((Comparable<Object>)o1).compareTo(o2);
			}
		}

	};

	private Comparator<Object> d = new Comparator<Object>() {

		@SuppressWarnings("unchecked")
		@Override
		public int compare(Object o1, Object o2) {
			if ((((Comparable<String>)o1).compareTo("") == 0) && (((Comparable)o2).compareTo("") == 0)) 
				return 0;

			try {
				return new Integer(Integer.parseInt((String)o1)).compareTo(Integer.parseInt((String)o2));
			} catch (NumberFormatException e) {


				if (((Comparable<String>)o1).compareTo("") == 0) {
					return 1;
				}
				if (((Comparable<String>)o2).compareTo("") == 0) {
					return -1;
				}
				return ((Comparable<Object>)o1).compareTo(o2);
			}
		}

	};

	public Comparator<?> getComparator(int column) {
		if (asc)
			return c;
		else
			return d;
	}

	public EplTableRowSorter(TableModel model) {
		super(model);
	}

	public void toggleSortOrder(int column) {
		if (column != lastcol) {
			asc = false;
			lastcol = column;
		} else {
			List<SortKey> keys = new ArrayList<SortKey>(getSortKeys());
			asc = keys.get(0).getSortOrder() == SortOrder.ASCENDING;
		}
		super.toggleSortOrder(column);
	}
}
