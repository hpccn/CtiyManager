/**
 * 
 */
package cn.city.manager.model;

import org.json.JSONObject;

/**
 * @author hpc
 *
 */
public interface BaseContentCoder {
	public JSONObject code(BaseContent content);
}
